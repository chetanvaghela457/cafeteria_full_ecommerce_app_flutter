part of 'login_bloc.dart';

@immutable
sealed class LoginEvent {}

class LoginSingInButtonNavigateEvent extends LoginEvent {}

class LoginForgotPasswordNavigateEvent extends LoginEvent {}

class LoginGoogleLoginNavigateEvent extends LoginEvent {}

class LoginFacebookLoginNavigateEvent extends LoginEvent {}

class LoginAppleLoginNavigateEvent extends LoginEvent {}

class LoginSignupPageNavigateEvent extends LoginEvent {}

class EmailChanged extends LoginEvent {
  final String email;
  EmailChanged(this.email);
}

class PasswordChanged extends LoginEvent {
  final String password;
  PasswordChanged(this.password);
}
