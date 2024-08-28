import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginSingInButtonNavigateEvent>(loginSingInButtonNavigateEvent);
    on<LoginSignupPageNavigateEvent>(loginSignupPageNavigateEvent);
  }

  FutureOr<void> loginSingInButtonNavigateEvent(LoginSingInButtonNavigateEvent event, Emitter<LoginState> emit) {
    print("SignIn OTP");
    emit(LoginNavigateToOtpActionState());
  }

  FutureOr<void> loginSignupPageNavigateEvent(LoginSignupPageNavigateEvent event, Emitter<LoginState> emit) {
    print("SignUp");
    emit(LoginNavigateToSignUpActionState());
  }
}
