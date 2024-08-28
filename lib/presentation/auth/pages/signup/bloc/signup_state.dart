part of 'signup_bloc.dart';

@immutable
sealed class SignupState {}

abstract class SignupActionState extends SignupState {}

final class SignupInitial extends SignupState {}

class SignupNavigateToLoginActionState extends  SignupActionState {

}

class SignupNavigateToOtpActionState extends  SignupActionState {

}