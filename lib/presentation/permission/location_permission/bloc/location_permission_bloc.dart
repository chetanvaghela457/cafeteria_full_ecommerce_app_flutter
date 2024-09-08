import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:permission_handler/permission_handler.dart';

part 'location_permission_event.dart';

part 'location_permission_state.dart';

class LocationPermissionBloc
    extends Bloc<LocationPermissionEvent, LocationPermissionState> {
  LocationPermissionBloc() : super(LocationPermissionInitial()) {
    on<LocationPermissionEnterManuallyClickEvent>(locationPermissionEnterManuallyClickEvent);
    on<LocationPermissionCheckStatusEvent>(onCheckPermissionStatus);
    on<LocationPermissionAllowClickEvent>(onAllowClick);
  }

  FutureOr<void> locationPermissionAllowClickEvent(
      LocationPermissionAllowClickEvent event,
      Emitter<LocationPermissionState> emit) {
    emit(LocationPermissionAllowClickState());
  }

  FutureOr<void> locationPermissionEnterManuallyClickEvent(
      LocationPermissionEnterManuallyClickEvent event,
      Emitter<LocationPermissionState> emit) {
    emit(LocationPermissionEnterManuallyClickState());
  }

  Future<void> onCheckPermissionStatus(
      LocationPermissionCheckStatusEvent event,
      Emitter<LocationPermissionState> emit) async {
    var status = await Permission.location.status;

    if (status.isGranted) {
      emit(LocationPermissionGrantedState());
    } else {
      emit(LocationPermissionDeniedState());
    }
  }

  Future<void> onAllowClick(
      LocationPermissionAllowClickEvent event,
      Emitter<LocationPermissionState> emit) async {
    var status = await Permission.location.request();
    if (status.isGranted) {
      emit(LocationPermissionGrantedState());
    } else {
      emit(LocationPermissionDeniedState());
    }
  }

}
