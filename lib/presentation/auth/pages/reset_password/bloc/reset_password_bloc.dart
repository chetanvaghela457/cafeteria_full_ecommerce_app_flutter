import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'reset_password_event.dart';
part 'reset_password_state.dart';

class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  ResetPasswordBloc() : super(ResetPasswordInitial()) {
    on<ResetPasswordBackClickEvent>(resetPasswordBackClickEvent);
    on<ResetPasswordSubmitClickEvent>(resetPasswordSubmitClickEvent);
  }

  FutureOr<void> resetPasswordBackClickEvent(ResetPasswordBackClickEvent event, Emitter<ResetPasswordState> emit) {
    emit(ResetPasswordBackClickState());
  }

  FutureOr<void> resetPasswordSubmitClickEvent(ResetPasswordSubmitClickEvent event, Emitter<ResetPasswordState> emit) {
    emit(ResetPasswordSubmitClickState());
  }
}
