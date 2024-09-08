part of 'change_password_bloc.dart';

@immutable
sealed class ChangePasswordState {}

final class ChangePasswordInitial extends ChangePasswordState {}

abstract class ChangePasswordActionState extends ChangePasswordState {}

class ChangePasswordBackClickState extends ChangePasswordActionState {}

class ChangePasswordSubmitClickState extends ChangePasswordActionState {}

class ChangePasswordValid extends ChangePasswordState {
  @override
  List<Object> get props => [];
}

class ChangePasswordInvalid extends ChangePasswordState {
  final String message;

  ChangePasswordInvalid(this.message);
}
