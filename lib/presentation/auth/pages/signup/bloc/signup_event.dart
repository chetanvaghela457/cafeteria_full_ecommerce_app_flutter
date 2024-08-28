part of 'signup_bloc.dart';

@immutable
sealed class SignupEvent {}

class SignupGoogleSignupNavigateEvent extends SignupEvent {}

class SignupFacebookSignupNavigateEvent extends SignupEvent {}

class SignupAppleSignupNavigateEvent extends SignupEvent {}

class SignupLoginPageNavigateEvent extends SignupEvent {}

class SignupOtpPageNavigateEvent extends SignupEvent {}
