part of 'completed_orders_bloc.dart';

@immutable
sealed class CompletedOrdersEvent {}


class CompletedOrdersInitialEvent extends CompletedOrdersEvent {}