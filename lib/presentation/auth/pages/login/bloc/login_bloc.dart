import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginSingInButtonNavigateEvent>(loginSingInButtonNavigateEvent);
    on<LoginSignupPageNavigateEvent>(loginSignupPageNavigateEvent);
    on<LoginForgotPasswordNavigateEvent>(loginForgotPasswordNavigateEvent);
    on<EmailChanged>(emailChanged);
    on<PasswordChanged>(passwordChanged);
    on<LoginSubmitted>(loginSubmitted);
  }

  void _performLogin(String email, String password, Emitter<LoginState> emit) {
    // Perform login logic, such as making an API request
    print('Logging in with email: $email and password: $password');
    emit(LoginNavigateToOtpActionState());
  }

  FutureOr<void> loginSingInButtonNavigateEvent(
      LoginSingInButtonNavigateEvent event, Emitter<LoginState> emit) {
    print("SignIn OTP");
    emit(LoginNavigateToOtpActionState());
  }

  FutureOr<void> loginSignupPageNavigateEvent(
      LoginSignupPageNavigateEvent event, Emitter<LoginState> emit) {
    print("SignUp");
    emit(LoginNavigateToSignUpActionState());
  }

  FutureOr<void> loginForgotPasswordNavigateEvent(
      LoginForgotPasswordNavigateEvent event, Emitter<LoginState> emit) {
    emit(LoginNavigateToForgotPasswordActionState());
  }

  FutureOr<void> emailChanged(EmailChanged event, Emitter<LoginState> emit) {
    if (!_isValidEmail(event.email)) {
      emit(LoginInvalid("Invalid email format"));
    } else {
      emit(LoginValid());
    }
  }

  FutureOr<void> passwordChanged(
      PasswordChanged event, Emitter<LoginState> emit) {
    if (event.password.length < 6) {
      emit(LoginInvalid("Password must be at least 6 characters"));
    } else {
      emit(LoginValid());
    }
  }

  bool _isValidEmail(String email) {
    // Basic regex for email validation
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
  }

  FutureOr<void> loginSubmitted(LoginSubmitted event, Emitter<LoginState> emit) {
    if (!_isValidEmail(event.email)) {
      emit(LoginInvalid("Invalid email format"));
      return null;
    }

    // Validate password
    if (event.password.length < 6) {
      emit(LoginInvalid("Password must be at least 8 characters"));
      return null;
    }

    // If both are valid, proceed with login
    emit(LoginValid());
    _performLogin(
        event.email, event.password, emit);
  }
}
