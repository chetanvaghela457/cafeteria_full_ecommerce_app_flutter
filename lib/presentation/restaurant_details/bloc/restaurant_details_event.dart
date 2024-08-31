part of 'restaurant_details_bloc.dart';

@immutable
sealed class RestaurantDetailsEvent {}

class TabChange extends RestaurantDetailsEvent {
  final int tabIndex;

  TabChange({required this.tabIndex});
}