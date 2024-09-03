import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:coffeeshopapp/data/active_order_data.dart';
import 'package:coffeeshopapp/presentation/order/models/orders_model.dart';
import 'package:meta/meta.dart';

part 'cancelled_orders_event.dart';
part 'cancelled_orders_state.dart';

class CancelledOrdersBloc extends Bloc<CancelledOrdersEvent, CancelledOrdersState> {
  CancelledOrdersBloc() : super(CancelledOrdersInitial()) {
    on<CancelledOrdersInitialEvent>(cancelledOrdersInitialEvent);
  }

  FutureOr<void> cancelledOrdersInitialEvent(CancelledOrdersInitialEvent event, Emitter<CancelledOrdersState> emit) async {
    emit(CancelledOrdersLoadingState());
    await Future.delayed(Duration(seconds: 1));
    emit(CancelledOrdersLoadedSuccessState(
      ActiveOrderData.orderData.map((e) => OrderData.fromJson(e)).toList(),
    ));
  }
}
