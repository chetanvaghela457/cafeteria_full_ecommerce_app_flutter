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
    on<OldPasswordChangedEvent>(oldPasswordChangedEvent);
    on<PasswordChangedEvent>(passwordChangedEvent);
    on<ConfirmPasswordChangedEvent>(confirmPasswordChangedEvent);
    on<ChangePasswordSubmittedEvent>(changePasswordSubmittedEvent);
  }

  FutureOr<void> changePasswordSubmitClickEvent(
      ChangePasswordSubmitClickEvent event, Emitter<ChangePasswordState> emit) {
    emit(ChangePasswordSubmitClickState());
  }

  FutureOr<void> changePasswordBackClickEvent(
      ChangePasswordBackClickEvent event, Emitter<ChangePasswordState> emit) {
    emit(ChangePasswordBackClickState());
  }

  FutureOr<void> oldPasswordChangedEvent(OldPasswordChangedEvent event, Emitter<ChangePasswordState> emit) {
    if (event.password.length < 8) {
      emit(ChangePasswordInvalid("Old Password must be at least 8 characters"));
    } else {
      emit(ChangePasswordValid());
    }
  }

  FutureOr<void> passwordChangedEvent(PasswordChangedEvent event, Emitter<ChangePasswordState> emit) {
    if (event.password.length < 8) {
      emit(ChangePasswordInvalid("New Password must be at least 8 characters"));
    } else {
      emit(ChangePasswordValid());
    }
  }

  FutureOr<void> confirmPasswordChangedEvent(ConfirmPasswordChangedEvent event, Emitter<ChangePasswordState> emit) {
    if (event.password.length < 8) {
      emit(ChangePasswordInvalid("Confirm Password must be at least 8 characters"));
    } else if (event.confirmPassword.toString() != event.password) {
      emit(ChangePasswordInvalid("Confirm Password Not Matched"));
    } else {
      emit(ChangePasswordValid());
    }
  }

  FutureOr<void> changePasswordSubmittedEvent(ChangePasswordSubmittedEvent event, Emitter<ChangePasswordState> emit) {

    if (event.oldPassword.length < 8) {
      emit(ChangePasswordInvalid("Old Password must be at least 8 characters"));
      return null;
    }

    if (event.password.length < 8) {
      emit(ChangePasswordInvalid("New Password must be at least 8 characters"));
      return null;
    }

    if (event.newPassword.length < 8) {
      emit(ChangePasswordInvalid("Confirm Password must be at least 8 characters"));
      return null;
    } else if (event.newPassword.toString() != event.password) {
      emit(ChangePasswordInvalid("Confirm Password Not Matched"));
      return null;
    }

    emit(ChangePasswordValid());
    _performChangePassword(event.password, emit);
  }



  void _performChangePassword(
      String password, Emitter<ChangePasswordState> emit) {
    print('Change Password with password: $password');
    emit(ChangePasswordSubmitClickState());
  }
}
