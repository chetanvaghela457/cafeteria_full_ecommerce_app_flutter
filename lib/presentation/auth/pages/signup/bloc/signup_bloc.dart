import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc() : super(SignupInitial()) {
    on<SignupLoginPageNavigateEvent>(signupLoginPageNavigateEvent);
    on<SignupOtpPageNavigateEvent>(signupOtpPageNavigateEvent);
    on<UsernameChanged>(usernameChanged);
    on<EmailChanged>(emailChanged);
    on<PasswordChanged>(passwordChanged);
    on<SignUpSubmitted>(signUpSubmitted);
  }

  FutureOr<void> signupLoginPageNavigateEvent(SignupLoginPageNavigateEvent event, Emitter<SignupState> emit) {
    emit(SignupNavigateToLoginActionState());
  }

  FutureOr<void> signupOtpPageNavigateEvent(SignupOtpPageNavigateEvent event, Emitter<SignupState> emit) {
    emit(SignupNavigateToOtpActionState());
  }

  FutureOr<void> usernameChanged(UsernameChanged event, Emitter<SignupState> emit) {
    if (event.username.isEmpty) {
      emit(SignupInvalid("Username should not be empty"));
    } else {
      emit(SignupValid());
    }
  }

  FutureOr<void> emailChanged(EmailChanged event, Emitter<SignupState> emit) {
    if (!_isValidEmail(event.email)) {
      emit(SignupInvalid("Invalid email format"));
    } else {
      emit(SignupValid());
    }
  }

  FutureOr<void> passwordChanged(PasswordChanged event, Emitter<SignupState> emit) {
    if (event.password.length < 8) {
      emit(SignupInvalid("Password must be at least 6 characters"));
    } else {
      emit(SignupValid());
    }
  }

  bool _isValidEmail(String email) {
    // Basic regex for email validation
    return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);
  }

  FutureOr<void> signUpSubmitted(SignUpSubmitted event, Emitter<SignupState> emit) {
    if (event.name.isEmpty) {
      emit(SignupInvalid("Name should not be Empty"));
      return null;
    }

    if (!_isValidEmail(event.email)) {
      emit(SignupInvalid("Invalid email format"));
      return null;
    }

    // Validate password
    if (event.password.length < 6) {
      emit(SignupInvalid("Password must be at least 8 characters"));
      return null;
    }

    // If both are valid, proceed with login
    emit(SignupValid());
    _performSignup(
        event.name , event.email, event.password, emit);
  }

  void _performSignup(String name, String email, String password, Emitter<SignupState> emit) {
    print('Signup with name: $name email: $email and password: $password');
    emit(SignupNavigateToOtpActionState());
  }
}
