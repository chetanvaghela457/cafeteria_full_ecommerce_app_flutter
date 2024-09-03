part of 'my_orders_bloc.dart';

@immutable
sealed class MyOrdersState {
  final int? tabIndex;

  const MyOrdersState({this.tabIndex});
}

final class MyOrdersInitial extends MyOrdersState {
  const MyOrdersInitial({required super.tabIndex});
}

abstract class MyOrdersActionState extends MyOrdersState {}

class MyOrdersBackClickState extends MyOrdersActionState {}


