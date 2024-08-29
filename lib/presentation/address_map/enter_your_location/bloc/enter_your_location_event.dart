part of 'enter_your_location_bloc.dart';

@immutable
sealed class EnterYourLocationEvent {}

abstract class EnterYourLocationActionEvent extends EnterYourLocationEvent {}

class LoadUserLocation extends EnterYourLocationEvent {}

class UpdateUserLocation extends EnterYourLocationEvent {
  final double latitude;
  final double longitude;

  UpdateUserLocation(this.latitude, this.longitude);
}

class SearchLocationEvent extends EnterYourLocationEvent {
  final String query;

  SearchLocationEvent(this.query);
}

class EnterYourLocationAddressTypeSelectionEvent extends EnterYourLocationEvent {
  final int typeSelect;

  EnterYourLocationAddressTypeSelectionEvent({required this.typeSelect});
}

class SaveAddressClickedNavigationEvent extends EnterYourLocationActionEvent {}