part of 'coffee_list_bloc.dart';

@immutable
sealed class CoffeeListState {}

abstract class CoffeeListActionState extends CoffeeListState {}

final class CoffeeListInitial extends CoffeeListState {}

class CoffeeListLoadingState extends CoffeeListState {}

class CoffeeListLoadedSuccessState extends CoffeeListState {
  final List<ProductDataModel> featureProducts;

  CoffeeListLoadedSuccessState(
      this.featureProducts);
}

class CoffeeListErrorState extends CoffeeListState {}
