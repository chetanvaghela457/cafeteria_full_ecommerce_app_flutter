import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc() : super(SignupInitial()) {
    on<SignupLoginPageNavigateEvent>(signupLoginPageNavigateEvent);
    on<SignupOtpPageNavigateEvent>(signupOtpPageNavigateEvent);
  }

  FutureOr<void> signupLoginPageNavigateEvent(SignupLoginPageNavigateEvent event, Emitter<SignupState> emit) {
    emit(SignupNavigateToLoginActionState());
  }

  FutureOr<void> signupOtpPageNavigateEvent(SignupOtpPageNavigateEvent event, Emitter<SignupState> emit) {
    emit(SignupNavigateToOtpActionState());
  }
}
