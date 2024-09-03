part of 'pickup_location_bloc.dart';

@immutable
sealed class PickupLocationState {}

final class PickupLocationInitial extends PickupLocationState {}

abstract class PickupLocationActionState extends PickupLocationState {}

class PickupLocationScanQrClickState extends PickupLocationActionState {}
class PickupLocationBackClickState extends PickupLocationActionState {}