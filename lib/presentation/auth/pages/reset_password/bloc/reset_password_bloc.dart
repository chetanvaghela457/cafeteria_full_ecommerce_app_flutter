import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'reset_password_event.dart';

part 'reset_password_state.dart';

class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  ResetPasswordBloc() : super(ResetPasswordInitial()) {
    on<ResetPasswordBackClickEvent>(resetPasswordBackClickEvent);
    on<ResetPasswordSubmitClickEvent>(resetPasswordSubmitClickEvent);
    on<PasswordChanged>(passwordChanged);
    on<ConfirmPasswordChanged>(confirmPasswordChanged);
    on<ResetPasswordSubmitted>(resetPasswordSubmitted);
  }

  FutureOr<void> resetPasswordBackClickEvent(
      ResetPasswordBackClickEvent event, Emitter<ResetPasswordState> emit) {
    emit(ResetPasswordBackClickState());
  }

  FutureOr<void> resetPasswordSubmitClickEvent(
      ResetPasswordSubmitClickEvent event, Emitter<ResetPasswordState> emit) {
    emit(ResetPasswordSubmitClickState());
  }

  FutureOr<void> passwordChanged(
      PasswordChanged event, Emitter<ResetPasswordState> emit) {
    if (event.password.length < 8) {
      emit(ResetPasswordInvalid("Entered Password must be at least 8 characters"));
    } else {
      emit(ResetPasswordValid());
    }
  }

  FutureOr<void> confirmPasswordChanged(
      ConfirmPasswordChanged event, Emitter<ResetPasswordState> emit) {
    if (event.password.length < 8) {
      emit(ResetPasswordInvalid("Confirm Password must be at least 8 characters"));
    } else if (event.confirmPassword.toString() != event.password) {
      emit(ResetPasswordInvalid("Confirm Password Not Matched"));
    } else {
      emit(ResetPasswordValid());
    }
  }

  FutureOr<void> resetPasswordSubmitted(
      ResetPasswordSubmitted event, Emitter<ResetPasswordState> emit) {
    if (event.password.length < 8) {
      emit(ResetPasswordInvalid("Password must be at least 8 characters"));
      return null;
    }

    // If both are valid, proceed with login
    emit(ResetPasswordValid());
    _performResetPassword(event.password, emit);
  }

  void _performResetPassword(
      String password, Emitter<ResetPasswordState> emit) {
    print('Reset Password with password: $password');
    emit(ResetPasswordSubmitClickState());
  }
}
