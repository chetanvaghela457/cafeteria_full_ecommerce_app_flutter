part of 'my_orders_bloc.dart';

@immutable
sealed class MyOrdersEvent {}


class TabChange extends MyOrdersEvent {
  final int tabIndex;

  TabChange({required this.tabIndex});
}

class MyOrdersBackClickEvent extends MyOrdersEvent {}