import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:coffeeshopapp/data/active_order_data.dart';
import 'package:coffeeshopapp/presentation/order/models/orders_model.dart';
import 'package:meta/meta.dart';

part 'active_orders_event.dart';

part 'active_orders_state.dart';

class ActiveOrdersBloc extends Bloc<ActiveOrdersEvent, ActiveOrdersState> {
  ActiveOrdersBloc() : super(ActiveOrdersInitial()) {
    on<ActiveOrdersInitialEvent>(activeOrdersInitialEvent);
    on<ActiveOrderNavigateTrackItemClickEvent>(activeOrderNavigateTrackItemClickEvent);
  }

  FutureOr<void> activeOrdersInitialEvent(
      ActiveOrdersInitialEvent event, Emitter<ActiveOrdersState> emit) async {
    emit(ActiveOrdersLoadingState());
    await Future.delayed(Duration(seconds: 1));
    emit(ActiveOrdersLoadedSuccessState(
      ActiveOrderData.orderData.map((e) => OrderData.fromJson(e)).toList(),
    ));
  }

  FutureOr<void> activeOrderNavigateTrackItemClickEvent(ActiveOrderNavigateTrackItemClickEvent event, Emitter<ActiveOrdersState> emit) {
    emit(ActiveOrderNavigateTrackItemClickState());
  }
}
