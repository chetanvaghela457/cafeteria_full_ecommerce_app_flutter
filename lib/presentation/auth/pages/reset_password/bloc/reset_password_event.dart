part of 'reset_password_bloc.dart';

@immutable
sealed class ResetPasswordEvent {}

class ResetPasswordBackClickEvent extends ResetPasswordEvent {}

class ResetPasswordSubmitClickEvent extends ResetPasswordEvent {}

class PasswordChanged extends ResetPasswordEvent {
  final String password;

  PasswordChanged(this.password);
}

class ConfirmPasswordChanged extends ResetPasswordEvent {
  final String password;
  final String confirmPassword;

  ConfirmPasswordChanged(this.password,this.confirmPassword);
}

class ResetPasswordSubmitted extends ResetPasswordEvent {
  final String password;

  ResetPasswordSubmitted(this.password);

  @override
  List<Object> get props => [password];
}
