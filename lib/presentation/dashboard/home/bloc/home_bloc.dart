import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:coffeeshopapp/data/banner_data.dart';
import 'package:coffeeshopapp/data/feature_products.dart';
import 'package:coffeeshopapp/data/restaurant_data.dart';
import 'package:coffeeshopapp/presentation/dashboard/home/models/banner_data_model.dart';
import 'package:coffeeshopapp/presentation/dashboard/home/models/product_data_model.dart';
import 'package:coffeeshopapp/presentation/dashboard/home/models/restaurant_data_model.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeInitialEvent>(homeInitialEvent);
    on<HomeFeatureItemClickNavigateActionEvent>(homeFeatureItemClickNavigateActionEvent);
    on<HomeRestaurantItemClickNavigateActionEvent>(homeRestaurantItemClickNavigateActionEvent);
    on<HomeSearchClickNavigateActionEvent>(homeSearchClickNavigateActionEvent);
    on<HomeFilterClickNavigateActionEvent>(homeFilterClickNavigateActionEvent);
    on<HomeLocationClickNavigateActionEvent>(homeLocationClickNavigateActionEvent);
    on<HomeNotificationClickNavigateActionEvent>(homeNotificationClickNavigateActionEvent);
    on<HomeCartClickNavigateActionEvent>(homeCartClickNavigateActionEvent);
  }

  FutureOr<void> homeInitialEvent(
      HomeInitialEvent event, Emitter<HomeState> emit) async {
    emit(HomeLoadingState());
    await Future.delayed(Duration(seconds: 2));
    emit(HomeLoadedSuccessState(
        BannerData.banners.map((e) => BannerDataModel(e['imageUrl'])).toList(),
        FeatureProductsData.featureProducts
            .map((e) => ProductDataModel.fromJson(e))
            .toList(),
        RestaurantData.restaurantData
            .map((e) => Restaurant.fromJson(e))
            .toList()));
  }

  FutureOr<void> homeFeatureItemClickNavigateActionEvent(HomeFeatureItemClickNavigateActionEvent event, Emitter<HomeState> emit) {
    emit(HomeFeatureItemClickNavigateActionState(event.productDataModel));
  }

  FutureOr<void> homeRestaurantItemClickNavigateActionEvent(HomeRestaurantItemClickNavigateActionEvent event, Emitter<HomeState> emit) {
    emit(HomeRestaurantItemClickNavigateActionState());
  }

  FutureOr<void> homeSearchClickNavigateActionEvent(HomeSearchClickNavigateActionEvent event, Emitter<HomeState> emit) {
    emit(HomeSearchClickNavigateActionState());
  }

  FutureOr<void> homeFilterClickNavigateActionEvent(HomeFilterClickNavigateActionEvent event, Emitter<HomeState> emit) {
    emit(HomeFilterClickNavigateActionState());
  }

  FutureOr<void> homeLocationClickNavigateActionEvent(HomeLocationClickNavigateActionEvent event, Emitter<HomeState> emit) {
    emit(HomeLocationClickNavigateActionState());
  }

  FutureOr<void> homeNotificationClickNavigateActionEvent(HomeNotificationClickNavigateActionEvent event, Emitter<HomeState> emit) {
    emit(HomeNotificationClickNavigateActionState());
  }

  FutureOr<void> homeCartClickNavigateActionEvent(HomeCartClickNavigateActionEvent event, Emitter<HomeState> emit) {
    emit(HomeCartClickNavigateActionState());

  }
}
