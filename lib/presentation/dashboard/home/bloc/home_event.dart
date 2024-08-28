part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class HomeInitialEvent extends HomeEvent {}

class HomeFeatureItemClickNavigateActionEvent extends HomeEvent {
  final ProductDataModel productDataModel;
  HomeFeatureItemClickNavigateActionEvent({required this.productDataModel});
}

class HomeRestaurantItemClickNavigateActionEvent extends HomeEvent {

}

class HomeSearchClickNavigateActionEvent extends HomeEvent {

}

class HomeFilterClickNavigateActionEvent extends HomeEvent {

}

class HomeLocationClickNavigateActionEvent extends HomeEvent {

}

class HomeNotificationClickNavigateActionEvent extends HomeEvent {

}

class HomeCartClickNavigateActionEvent extends HomeEvent {

}
