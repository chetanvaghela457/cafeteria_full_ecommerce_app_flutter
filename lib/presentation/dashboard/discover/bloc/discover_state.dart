part of 'discover_bloc.dart';

@immutable
sealed class DiscoverState {}

final class DiscoverInitial extends DiscoverState {}

class MapLoaded extends DiscoverState {
  final String mapStyle;

  MapLoaded({required this.mapStyle});
}

class MarkersLoaded extends DiscoverState {
  final Map<Restaurant, Marker> markers;

  MarkersLoaded({required this.markers});
}

class ZoomedIn extends DiscoverState {}

class ZoomedOut extends DiscoverState {}

class LocationChanged extends DiscoverState {
  final double lat;
  final double long;

  LocationChanged({required this.lat, required this.long});
}


class LoadingState extends DiscoverState {}

// New Combined State
class MapWithMarkersLoaded extends DiscoverState {
  final String mapStyle;
  final Map<Restaurant, Marker> markers;

  MapWithMarkersLoaded({required this.mapStyle, required this.markers});
}

class DiscoverSearchClickActionState extends DiscoverState {}
class DiscoverFilterClickActionState extends DiscoverState {}
