import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'notification_permission_event.dart';

part 'notification_permission_state.dart';

class NotificationPermissionBloc
    extends Bloc<NotificationPermissionEvent, NotificationPermissionState> {
  NotificationPermissionBloc() : super(NotificationPermissionInitial()) {
    on<NotificationPermissionAllowClickEvent>(
        notificationPermissionAllowClickEvent);
    on<NotificationPermissionMayBeLaterClickEvent>(
        notificationPermissionMayBeLaterClickEvent);
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
}
