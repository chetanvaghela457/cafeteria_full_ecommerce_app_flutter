part of 'cancelled_orders_bloc.dart';

@immutable
sealed class CancelledOrdersEvent {}


class CancelledOrdersInitialEvent extends CancelledOrdersEvent {}