part of 'topup_success_bloc.dart';

@immutable
sealed class TopupSuccessState {}

final class TopupSuccessInitial extends TopupSuccessState {}

abstract class TopupSuccessActionState extends TopupSuccessState {}
class TopupSuccessOkClickState extends TopupSuccessActionState {}
class TopupSuccessBackClickState extends TopupSuccessActionState {}