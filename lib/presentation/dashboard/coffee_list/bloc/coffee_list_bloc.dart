import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:coffeeshopapp/data/feature_products.dart';
import 'package:coffeeshopapp/presentation/dashboard/home/models/product_data_model.dart';
import 'package:meta/meta.dart';

part 'coffee_list_event.dart';

part 'coffee_list_state.dart';

class CoffeeListBloc extends Bloc<CoffeeListEvent, CoffeeListState> {
  CoffeeListBloc() : super(CoffeeListInitial()) {
    on<CoffeeListInitialEvent>(coffeeListInitialEvent);
  }

  FutureOr<void> coffeeListInitialEvent(
      CoffeeListInitialEvent event, Emitter<CoffeeListState> emit) async {
    emit(CoffeeListLoadingState());
    await Future.delayed(Duration(seconds: 1));
    emit(CoffeeListLoadedSuccessState(FeatureProductsData.featureProducts
        .map((e) => ProductDataModel.fromJson(e))
        .toList()));
  }
}
