part of 'enter_your_location_bloc.dart';

@immutable
class EnterYourLocationState {

}

final class EnterYourLocationActionState extends EnterYourLocationState {}

final class EnterYourLocationInitial extends EnterYourLocationState {}

class SaveAddressClickedNavigationState extends EnterYourLocationState {}

class LocationInitial extends EnterYourLocationState {}

class LocationLoading extends EnterYourLocationState {}

class LocationLoaded extends EnterYourLocationState {
  final LatLng position;
  final String address;
  final List<Marker> markers;
  final Placemark placemark;

  LocationLoaded({
    required this.position,
    required this.address,
    required this.markers,
    required this.placemark,
  });
}

class LocationError extends EnterYourLocationState {
  final String message;

  LocationError(this.message);
}
