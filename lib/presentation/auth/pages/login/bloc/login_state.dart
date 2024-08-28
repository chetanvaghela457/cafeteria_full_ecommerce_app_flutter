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



