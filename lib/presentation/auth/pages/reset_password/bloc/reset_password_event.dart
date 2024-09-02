part of 'reset_password_bloc.dart';

@immutable
sealed class ResetPasswordEvent {}

class ResetPasswordBackClickEvent extends ResetPasswordEvent {}
class ResetPasswordSubmitClickEvent extends ResetPasswordEvent {}