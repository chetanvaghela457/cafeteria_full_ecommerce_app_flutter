part of 'cancel_order_bloc.dart';

@immutable
class CancelOrderState {
  final int initialReasonSelection;

  CancelOrderState({this.initialReasonSelection = 0});
}

final class CancelOrderInitial extends CancelOrderState {}

abstract class CancelOrderActionState extends CancelOrderState {}

class CancelOrderBackClickState extends CancelOrderActionState {}
class CancelOrderSubmitClickState extends CancelOrderActionState {}


class CancelOrderLoadingState extends CancelOrderState {}

class CancelOrderLoadedSuccessState extends CancelOrderState {
  final List<String> cancelReasons;

  CancelOrderLoadedSuccessState(this.cancelReasons);
}

class CancelOrderErrorState extends CancelOrderState {}