import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:coffeeshopapp/data/restaurant_data.dart';
import 'package:coffeeshopapp/presentation/dashboard/home/models/product_data_model.dart';
import 'package:coffeeshopapp/presentation/dashboard/home/models/restaurant_data_model.dart';
import 'package:meta/meta.dart';

part 'cafe_list_event.dart';

part 'cafe_list_state.dart';

class CafeListBloc extends Bloc<CafeListEvent, CafeListState> {
  CafeListBloc() : super(CafeListInitial()) {
    on<CafeListInitialEvent>(cafeListInitialEvent);
  }

  FutureOr<void> cafeListInitialEvent(
      CafeListInitialEvent event, Emitter<CafeListState> emit) async {
    emit(CafeListLoadingState());
    await Future.delayed(Duration(seconds: 1));
    emit(CafeListLoadedSuccessState(RestaurantData.restaurantData
        .map((e) => Restaurant.fromJson(e))
        .toList()));
  }
}
