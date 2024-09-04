part of 'topup_success_bloc.dart';

@immutable
sealed class TopupSuccessEvent {}

class TopupSuccessOkClickEvent extends TopupSuccessEvent {}
class TopupSuccessBackClickEvent extends TopupSuccessEvent {}