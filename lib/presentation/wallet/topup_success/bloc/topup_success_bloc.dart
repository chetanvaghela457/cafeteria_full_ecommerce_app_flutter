import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'topup_success_event.dart';
part 'topup_success_state.dart';

class TopupSuccessBloc extends Bloc<TopupSuccessEvent, TopupSuccessState> {
  TopupSuccessBloc() : super(TopupSuccessInitial()) {
    on<TopupSuccessOkClickEvent>(topupSuccessOkClickEvent);
    on<TopupSuccessBackClickEvent>(topupSuccessBackClickEvent);
  }

  FutureOr<void> topupSuccessOkClickEvent(TopupSuccessOkClickEvent event, Emitter<TopupSuccessState> emit) {
    emit(TopupSuccessOkClickState());
  }

  FutureOr<void> topupSuccessBackClickEvent(TopupSuccessBackClickEvent event, Emitter<TopupSuccessState> emit) {
    emit(TopupSuccessBackClickState());
  }
}
