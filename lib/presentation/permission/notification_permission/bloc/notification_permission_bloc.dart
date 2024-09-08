import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:permission_handler/permission_handler.dart';

part 'notification_permission_event.dart';

part 'notification_permission_state.dart';

class NotificationPermissionBloc
    extends Bloc<NotificationPermissionEvent, NotificationPermissionState> {
  NotificationPermissionBloc() : super(NotificationPermissionInitial()) {
    on<NotificationPermissionAllowClickEvent>(
        notificationPermissionAllowClickEvent);
    on<NotificationPermissionMayBeLaterClickEvent>(notificationPermissionMayBeLaterClickEvent);
    on<NotificationPermissionCheckEvent>(_onCheckPermission);
  }

  FutureOr<void> notificationPermissionAllowClickEvent(
      NotificationPermissionAllowClickEvent event,
      Emitter<NotificationPermissionState> emit) {
    emit(NotificationPermissionAllowClickState());
  }

  FutureOr<void> notificationPermissionMayBeLaterClickEvent(
      NotificationPermissionMayBeLaterClickEvent event,
      Emitter<NotificationPermissionState> emit) {
    emit(NotificationPermissionMayBeLaterClickState());
  }

  void _onCheckPermission(NotificationPermissionCheckEvent event, Emitter<NotificationPermissionState> emit) async {
    if (Platform.isAndroid) {
      int sdkInt = int.parse(await _getAndroidSdkInt());

      if (sdkInt < 33) {
        // Android 12 and below does not need explicit notification permission
        emit(NotificationPermissionNotRequiredState());
      } else {
        // Check if permission is already granted
        var status = await Permission.notification.status;
        if (status.isGranted) {
          emit(NotificationPermissionGrantedState());
        } else {
          emit(NotificationPermissionDeniedState());
        }
      }
    } else if (Platform.isIOS) {
      // iOS 15+ requires notification permissions
      if (await _isIOSVersion15OrHigher()) {
        var status = await Permission.notification.status;
        if (status.isGranted) {
          emit(NotificationPermissionGrantedState());
        } else {
          emit(NotificationPermissionDeniedState());
        }
      } else {
        emit(NotificationPermissionNotRequiredState());
      }
    } else {
      emit(NotificationPermissionNotRequiredState());
    }
  }

  void _onRequestPermission(NotificationPermissionRequestEvent event, Emitter<NotificationPermissionState> emit) async {
    var status = await Permission.notification.request();
    if (status.isGranted) {
      emit(NotificationPermissionGrantedState());
    } else {
      emit(NotificationPermissionDeniedState());
    }
  }

  // Utility to get Android SDK version
  Future<String> _getAndroidSdkInt() async {
    if (!Platform.isAndroid) return '0';
    return (await Platform.environment['SDK_INT']) ?? '0';
  }

  // Utility to check iOS version
  Future<bool> _isIOSVersion15OrHigher() async {
    if (!Platform.isIOS) return false;
    String osVersion = await Platform.operatingSystemVersion;
    // Parse iOS version
    return int.parse(osVersion.split(' ')[1].split('.')[0]) >= 15;
  }
}
