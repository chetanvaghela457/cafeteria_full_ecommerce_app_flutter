import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:coffeeshopapp/data/active_order_data.dart';
import 'package:coffeeshopapp/presentation/order/models/orders_model.dart';
import 'package:meta/meta.dart';

part 'completed_orders_event.dart';
part 'completed_orders_state.dart';

class CompletedOrdersBloc extends Bloc<CompletedOrdersEvent, CompletedOrdersState> {
  CompletedOrdersBloc() : super(CompletedOrdersInitial()) {
    on<CompletedOrdersInitialEvent>(completedOrdersInitialEvent);
  }

  FutureOr<void> completedOrdersInitialEvent(CompletedOrdersInitialEvent event, Emitter<CompletedOrdersState> emit) async {
    emit(CompletedOrdersLoadingState());
    await Future.delayed(Duration(seconds: 1));
    emit(CompletedOrdersLoadedSuccessState(
      ActiveOrderData.orderData.map((e) => OrderData.fromJson(e)).toList(),
    ));
  }
}
