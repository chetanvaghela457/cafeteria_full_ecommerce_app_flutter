part of 'reset_password_bloc.dart';

@immutable
sealed class ResetPasswordState {}

final class ResetPasswordInitial extends ResetPasswordState {}

abstract class ResetPasswordActionState  extends ResetPasswordState {}

class ResetPasswordBackClickState extends ResetPasswordActionState {}
class ResetPasswordSubmitClickState extends ResetPasswordActionState {}

class ResetPasswordValid extends ResetPasswordState {
  @override
  List<Object> get props => [];
}

class ResetPasswordInvalid extends ResetPasswordState {
  final String message;
  ResetPasswordInvalid(this.message);
}

