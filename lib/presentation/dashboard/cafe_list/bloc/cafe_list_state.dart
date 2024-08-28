part of 'cafe_list_bloc.dart';

@immutable
sealed class CafeListState {}

final class CafeListInitial extends CafeListState {}

abstract class CafeListActionState extends CafeListState {}

class CafeListLoadingState extends CafeListState {}

class CafeListLoadedSuccessState extends CafeListState {
  final List<Restaurant> restaurantModel;

  CafeListLoadedSuccessState(
      this.restaurantModel);
}

class CafeListErrorState extends CafeListState {}