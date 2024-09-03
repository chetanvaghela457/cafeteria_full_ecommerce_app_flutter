import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'location_permission_event.dart';

part 'location_permission_state.dart';

class LocationPermissionBloc
    extends Bloc<LocationPermissionEvent, LocationPermissionState> {
  LocationPermissionBloc() : super(LocationPermissionInitial()) {
    on<LocationPermissionAllowClickEvent>(locationPermissionAllowClickEvent);
    on<LocationPermissionEnterManuallyClickEvent>(
        locationPermissionEnterManuallyClickEvent);
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
}
