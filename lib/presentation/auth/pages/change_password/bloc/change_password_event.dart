part of 'change_password_bloc.dart';

@immutable
sealed class ChangePasswordEvent {}

class ChangePasswordBackClickEvent extends ChangePasswordEvent {}
class ChangePasswordSubmitClickEvent extends ChangePasswordEvent {}