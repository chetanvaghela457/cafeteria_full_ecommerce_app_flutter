part of 'location_permission_bloc.dart';

@immutable
sealed class LocationPermissionState {}

final class LocationPermissionInitial extends LocationPermissionState {}

abstract class LocationPermissionActionState extends LocationPermissionState {}

class LocationPermissionAllowClickState extends LocationPermissionActionState {}
class LocationPermissionEnterManuallyClickState extends LocationPermissionActionState {}

class LocationPermissionGrantedState extends LocationPermissionActionState {
  @override
  List<Object> get props => [];
}

class LocationPermissionDeniedState extends LocationPermissionState {
  @override
  List<Object> get props => [];
}
