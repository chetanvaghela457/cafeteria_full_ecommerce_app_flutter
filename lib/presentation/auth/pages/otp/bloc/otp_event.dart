part of 'otp_bloc.dart';

@immutable
sealed class OtpEvent {}

class OtpVerifyNavigateEvent extends OtpEvent {}
class OtpResendNavigateEvent extends OtpEvent {}
class OtpBackNavigateEvent extends OtpEvent {}
