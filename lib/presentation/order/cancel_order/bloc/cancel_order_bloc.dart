import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:coffeeshopapp/data/cancel_reasons_data.dart';
import 'package:meta/meta.dart';

part 'cancel_order_event.dart';

part 'cancel_order_state.dart';

class CancelOrderBloc extends Bloc<CancelOrderEvent, CancelOrderState> {
  CancelOrderBloc() : super(CancelOrderState(initialReasonSelection: 0)) {
    on<CancelOrderInitialEvent>(cancelOrderInitialEvent);
    on<CancelOrderBackClickEvent>(cancelOrderBackClickEvent);
    on<CancelOrderSubmitClickEvent>(cancelOrderSubmitClickEvent);
    on<CancelOrderListSelectionEvent>(cancelOrderListSelectionEvent);
  }

  FutureOr<void> cancelOrderBackClickEvent(
      CancelOrderBackClickEvent event, Emitter<CancelOrderState> emit) {
    emit(CancelOrderBackClickState());
  }

  FutureOr<void> cancelOrderSubmitClickEvent(
      CancelOrderSubmitClickEvent event, Emitter<CancelOrderState> emit) {
    emit(CancelOrderSubmitClickState());
  }

  FutureOr<void> cancelOrderInitialEvent(CancelOrderInitialEvent event, Emitter<CancelOrderState> emit) {
    emit(CancelOrderLoadingState());
    emit(CancelOrderLoadedSuccessState(
      CancelReasonsData.cancelReasons.map((e) => e).toList(),
    ));
  }

  FutureOr<void> cancelOrderListSelectionEvent(CancelOrderListSelectionEvent event, Emitter<CancelOrderState> emit) {
    emit(CancelOrderState(initialReasonSelection: event.selectedAddress));
  }
}
