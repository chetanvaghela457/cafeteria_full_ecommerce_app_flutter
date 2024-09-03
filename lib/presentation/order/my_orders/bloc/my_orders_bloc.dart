import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'my_orders_event.dart';

part 'my_orders_state.dart';

class MyOrdersBloc extends Bloc<MyOrdersEvent, MyOrdersState> {
  MyOrdersBloc() : super(MyOrdersInitial(tabIndex: 0)) {
    on<MyOrdersEvent>((event, emit) {
      if (event is TabChange) {
        print(event.tabIndex);
        emit(MyOrdersInitial(tabIndex: event.tabIndex));
      }
    });
    on<MyOrdersBackClickEvent>(myOrdersBackClickEvent);
  }

  FutureOr<void> myOrdersBackClickEvent(
      MyOrdersBackClickEvent event, Emitter<MyOrdersState> emit) {
    emit(MyOrdersBackClickState());
  }
}
