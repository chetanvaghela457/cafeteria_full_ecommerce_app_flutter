part of 'discover_bloc.dart';

@immutable
sealed class DiscoverEvent {
  // @override
  // List<Object> get props => [];
}

abstract class DiscoverActionEvent extends DiscoverEvent {}

class LoadMap extends DiscoverEvent {}

class LoadMarkers extends DiscoverEvent {}

class ZoomIn extends DiscoverEvent {}

class ZoomOut extends DiscoverEvent {}

class GotoLocation extends DiscoverEvent {
  final double lat;
  final double long;

  GotoLocation({required this.lat, required this.long});
}

class DiscoverSearchClickActionEvent extends DiscoverActionEvent {}
class DiscoverFilterClickActionEvent extends DiscoverActionEvent {}