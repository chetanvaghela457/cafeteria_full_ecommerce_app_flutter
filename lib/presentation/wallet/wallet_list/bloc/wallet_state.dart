part of 'wallet_bloc.dart';

@immutable
sealed class WalletState {}

final class WalletInitial extends WalletState {}

abstract class WalletActionState extends WalletState {}

class WalletLoadingState extends WalletState {}

class WalletLoadedSuccessState extends WalletState {
  final Map<String, List<Map<String, dynamic>>> walletData;

  WalletLoadedSuccessState(this.walletData);
}

class WalletErrorState extends WalletState {}

class WalletBackClickState extends WalletActionState {}
class WalletAddMoneyClickState extends WalletActionState {}