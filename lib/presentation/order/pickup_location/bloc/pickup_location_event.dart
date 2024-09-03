part of 'pickup_location_bloc.dart';

@immutable
sealed class PickupLocationEvent {}

class PickupLocationScanQrClickEvent extends PickupLocationEvent {}
class PickupLocationBackClickEvent extends PickupLocationEvent {}