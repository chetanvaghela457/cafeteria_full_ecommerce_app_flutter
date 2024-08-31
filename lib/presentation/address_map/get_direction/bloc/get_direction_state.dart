part of 'get_direction_bloc.dart';

@immutable
sealed class GetDirectionState {}

final class GetDirectionActionState extends GetDirectionState {}

final class GetDirectionInitial extends GetDirectionState {}

class GetDirectionLocationLoading extends GetDirectionState {}

class GetDirectionLocationLoaded extends GetDirectionState {
  final LatLng position;
  final String address;
  final List<Marker> markers;
  final Placemark placemark;
  final Map<PolylineId, Polyline> polylines;

  GetDirectionLocationLoaded({
    required this.position,
    required this.address,
    required this.markers,
    required this.placemark,
    required this.polylines
  });
}

class GetDirectionLocationError extends GetDirectionState {
  final String message;

  GetDirectionLocationError(this.message);
}