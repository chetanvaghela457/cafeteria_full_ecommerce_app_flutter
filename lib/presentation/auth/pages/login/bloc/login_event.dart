part of 'login_bloc.dart';

@immutable
sealed class LoginEvent {}

class LoginSingInButtonNavigateEvent extends LoginEvent {}

class LoginForgotPasswordNavigateEvent extends LoginEvent {}

class LoginGoogleLoginNavigateEvent extends LoginEvent {}

class LoginFacebookLoginNavigateEvent extends LoginEvent {}

class LoginAppleLoginNavigateEvent extends LoginEvent {}

class LoginSignupPageNavigateEvent extends LoginEvent {}
