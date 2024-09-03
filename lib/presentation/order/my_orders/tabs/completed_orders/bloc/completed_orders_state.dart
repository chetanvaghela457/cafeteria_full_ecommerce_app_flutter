part of 'completed_orders_bloc.dart';

@immutable
sealed class CompletedOrdersState {}

final class CompletedOrdersInitial extends CompletedOrdersState {}

class CompletedOrdersLoadingState extends CompletedOrdersState {}

class CompletedOrdersLoadedSuccessState extends CompletedOrdersState {
  final List<OrderData> orderData;

  CompletedOrdersLoadedSuccessState(this.orderData);
}

class CompletedOrdersErrorState extends CompletedOrdersState {}