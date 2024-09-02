import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'change_password_event.dart';

part 'change_password_state.dart';

class ChangePasswordBloc
    extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  ChangePasswordBloc() : super(ChangePasswordInitial()) {
    on<ChangePasswordBackClickEvent>(changePasswordBackClickEvent);
    on<ChangePasswordSubmitClickEvent>(changePasswordSubmitClickEvent);
  }

  FutureOr<void> changePasswordSubmitClickEvent(
      ChangePasswordSubmitClickEvent event, Emitter<ChangePasswordState> emit) {
    emit(ChangePasswordSubmitClickState());
  }

  FutureOr<void> changePasswordBackClickEvent(
      ChangePasswordBackClickEvent event, Emitter<ChangePasswordState> emit) {
    emit(ChangePasswordBackClickState());
  }
}
