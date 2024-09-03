import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'order_placed_event.dart';
part 'order_placed_state.dart';

class OrderPlacedBloc extends Bloc<OrderPlacedEvent, OrderPlacedState> {
  OrderPlacedBloc() : super(OrderPlacedInitial()) {
    on<OrderPlacedViewOrderClickEvent>(orderPlacedViewOrderClickEvent);
    on<OrderPlacedViewReceiptClickEvent>(orderPlacedViewReceiptClickEvent);
  }

  FutureOr<void> orderPlacedViewOrderClickEvent(OrderPlacedViewOrderClickEvent event, Emitter<OrderPlacedState> emit) {
    emit(OrderPlacedViewOrderClickState());
  }

  FutureOr<void> orderPlacedViewReceiptClickEvent(OrderPlacedViewReceiptClickEvent event, Emitter<OrderPlacedState> emit) {
    emit(OrderPlacedViewReceiptClickState());
  }
}
