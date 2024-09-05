part of 'get_direction_bloc.dart';

@immutable
sealed class GetDirectionEvent {}

class GetDirectionLoadUserLocation extends GetDirectionEvent {}
class GetDirectionBackClickEvent extends GetDirectionEvent {}
class GetDirectionStartClickEvent extends GetDirectionEvent {}

class GetDirectionUpdateUserLocation extends GetDirectionEvent {
  final double latitude;
  final double longitude;

  GetDirectionUpdateUserLocation(this.latitude, this.longitude);
}
