part of 'otp_bloc.dart';

@immutable
sealed class OtpState {}

abstract class OtpActionState extends OtpState {}

final class OtpInitial extends OtpState {}

class OtpVerifyNavigateActionState extends OtpActionState {}
class OtpResendNavigateActionState extends OtpActionState {}
class OtpBackNavigateActionState extends OtpActionState {}
