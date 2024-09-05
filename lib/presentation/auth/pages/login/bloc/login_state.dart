part of 'login_bloc.dart';

@immutable
sealed class LoginState {}

abstract class LoginActionState extends LoginState {}

final class LoginInitial extends LoginState {}

class LoginNavigateToSignUpActionState extends LoginActionState {

}

class LoginNavigateToForgotPasswordActionState extends LoginActionState {

}

class LoginNavigateToOtpActionState extends LoginActionState {

}

class LoginValid extends LoginState {
  @override
  List<Object> get props => [];
}

class LoginInvalid extends LoginState {
  final String message;
  LoginInvalid(this.message);
}

class LoginSubmitted extends LoginEvent {
  final String email;
  final String password;

  LoginSubmitted(this.email, this.password);

  @override
  List<Object> get props => [email, password];
}



