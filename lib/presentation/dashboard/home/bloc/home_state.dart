part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

abstract class HomeActionState extends HomeState {}

final class HomeInitial extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeLoadedSuccessState extends HomeState {
  final List<BannerDataModel> banners;
  final List<ProductDataModel> featureProducts;
  final List<Restaurant> restaurantData;

  HomeLoadedSuccessState(
      this.banners, this.featureProducts, this.restaurantData);
}

class HomeErrorState extends HomeState {}

class HomeFeatureItemClickNavigateActionState extends HomeActionState {
  final ProductDataModel productDataModel;

  HomeFeatureItemClickNavigateActionState(this.productDataModel);
}

class HomeRestaurantItemClickNavigateActionState extends HomeActionState {}

class HomeSearchClickNavigateActionState extends HomeActionState {}

class HomeFilterClickNavigateActionState extends HomeActionState {}

class HomeLocationClickNavigateActionState extends HomeActionState {}

class HomeNotificationClickNavigateActionState extends HomeActionState {}

class HomeCartClickNavigateActionState extends HomeActionState {}
