part of 'location_permission_bloc.dart';

@immutable
sealed class LocationPermissionEvent {}

class LocationPermissionAllowClickEvent extends LocationPermissionEvent {}
class LocationPermissionEnterManuallyClickEvent extends LocationPermissionEvent {}

class LocationPermissionCheckStatusEvent extends LocationPermissionEvent {
  @override
  List<Object> get props => [];
}