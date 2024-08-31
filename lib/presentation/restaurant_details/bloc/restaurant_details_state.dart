part of 'restaurant_details_bloc.dart';

@immutable
class RestaurantDetailsState {
  final int tabIndex;

  const RestaurantDetailsState({required this.tabIndex});
}

final class RestaurantDetailsInitial extends RestaurantDetailsState {
  const RestaurantDetailsInitial({required super.tabIndex});
}
