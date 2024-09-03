part of 'active_orders_bloc.dart';

@immutable
sealed class ActiveOrdersState {}

final class ActiveOrdersInitial extends ActiveOrdersState {}

class ActiveOrdersLoadingState extends ActiveOrdersState {}

class ActiveOrdersLoadedSuccessState extends ActiveOrdersState {
  final List<OrderData> orderData;

  ActiveOrdersLoadedSuccessState(this.orderData);
}

class ActiveOrdersErrorState extends ActiveOrdersState {}

abstract class ActiveOrdersActionState extends ActiveOrdersState {}

class ActiveOrderNavigateTrackItemClickState extends ActiveOrdersActionState {}