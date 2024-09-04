part of 'wallet_bloc.dart';

@immutable
sealed class WalletEvent {}

class WalletInitialEvent extends WalletEvent {}

class WalletBackClickEvent extends WalletEvent {}
class WalletAddMoneyClickEvent extends WalletEvent {}