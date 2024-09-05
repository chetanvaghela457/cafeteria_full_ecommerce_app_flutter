part of 'signup_bloc.dart';

@immutable
sealed class SignupState {}

abstract class SignupActionState extends SignupState {}

final class SignupInitial extends SignupState {}

class SignupNavigateToLoginActionState extends  SignupActionState {

}

class SignupNavigateToOtpActionState extends  SignupActionState {

}

class SignupValid extends SignupState {
  @override
  List<Object> get props => [];
}

class SignupInvalid extends SignupState {
  final String message;
  SignupInvalid(this.message);
}