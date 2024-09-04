import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:coffeeshopapp/data/add_money_data.dart';
import 'package:meta/meta.dart';

part 'add_money_event.dart';
part 'add_money_state.dart';

class AddMoneyBloc extends Bloc<AddMoneyEvent, AddMoneyState> {
  AddMoneyBloc() : super(AddMoneyInitial()) {
    on<AddMoneyInitialEvent>(addMoneyInitialEvent);
    on<AddMoneyBackClickEvent>(addMoneyBackClickEvent);
    on<AddMoneyAddClickEvent>(addMoneyAddClickEvent);
    on<AddMoneyItemsClickEvent>(addMoneyItemsClickEvent);
  }

  FutureOr<void> addMoneyInitialEvent(AddMoneyInitialEvent event, Emitter<AddMoneyState> emit) {
    emit(AddMoneyLoadedSuccessState(
      AddMoneyData.addMoneyItem.map((e) => e).toList(),
    ));
  }

  FutureOr<void> addMoneyBackClickEvent(AddMoneyBackClickEvent event, Emitter<AddMoneyState> emit) {
    emit(AddMoneyBackClickState());
  }

  FutureOr<void> addMoneyAddClickEvent(AddMoneyAddClickEvent event, Emitter<AddMoneyState> emit) {
    emit(AddMoneyAddClickState());
  }

  FutureOr<void> addMoneyItemsClickEvent(AddMoneyItemsClickEvent event, Emitter<AddMoneyState> emit) {
    emit(AddMoneyItemsClickState());
  }
}
