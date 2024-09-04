part of 'cancel_order_bloc.dart';

@immutable
sealed class CancelOrderEvent {}

class CancelOrderInitialEvent extends CancelOrderEvent {}

class CancelOrderBackClickEvent extends CancelOrderEvent {}
class CancelOrderSubmitClickEvent extends CancelOrderEvent {}

class CancelOrderListSelectionEvent extends CancelOrderEvent {
  final int selectedAddress;

  CancelOrderListSelectionEvent({required this.selectedAddress});
}