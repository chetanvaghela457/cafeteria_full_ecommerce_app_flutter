import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'otp_event.dart';
part 'otp_state.dart';

class OtpBloc extends Bloc<OtpEvent, OtpState> {
  OtpBloc() : super(OtpInitial()) {
    on<OtpBackNavigateEvent>(otpBackNavigateEvent);
    on<OtpVerifyNavigateEvent>(otpVerifyNavigateEvent);
    on<OtpResendNavigateEvent>(otpResendNavigateEvent);
  }

  FutureOr<void> otpBackNavigateEvent(OtpBackNavigateEvent event, Emitter<OtpState> emit) {
    emit(OtpBackNavigateActionState());
  }

  FutureOr<void> otpVerifyNavigateEvent(OtpVerifyNavigateEvent event, Emitter<OtpState> emit) {
    emit(OtpVerifyNavigateActionState());
  }

  FutureOr<void> otpResendNavigateEvent(OtpResendNavigateEvent event, Emitter<OtpState> emit) {
    emit(OtpResendNavigateActionState());
  }
}
