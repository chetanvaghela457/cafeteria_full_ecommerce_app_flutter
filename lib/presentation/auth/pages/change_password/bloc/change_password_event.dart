part of 'change_password_bloc.dart';

@immutable
sealed class ChangePasswordEvent {}

class ChangePasswordBackClickEvent extends ChangePasswordEvent {}

class ChangePasswordSubmitClickEvent extends ChangePasswordEvent {}

class OldPasswordChangedEvent extends ChangePasswordEvent {
  final String password;

  OldPasswordChangedEvent(this.password);
}

class PasswordChangedEvent extends ChangePasswordEvent {
  final String password;

  PasswordChangedEvent(this.password);
}

class ConfirmPasswordChangedEvent extends ChangePasswordEvent {
  final String password;
  final String confirmPassword;

  ConfirmPasswordChangedEvent(this.password, this.confirmPassword);
}

class ChangePasswordSubmittedEvent extends ChangePasswordEvent {
  final String oldPassword;
  final String password;
  final String newPassword;

  ChangePasswordSubmittedEvent(
      this.oldPassword, this.password, this.newPassword);
}
