part of 'cancelled_orders_bloc.dart';

@immutable
sealed class CancelledOrdersState {}

final class CancelledOrdersInitial extends CancelledOrdersState {}

class CancelledOrdersLoadingState extends CancelledOrdersState {}

class CancelledOrdersLoadedSuccessState extends CancelledOrdersState {
  final List<OrderData> orderData;

  CancelledOrdersLoadedSuccessState(this.orderData);
}

class CancelledOrdersErrorState extends CancelledOrdersState {}