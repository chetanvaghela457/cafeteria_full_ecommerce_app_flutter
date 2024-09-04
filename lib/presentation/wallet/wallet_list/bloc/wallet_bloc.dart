import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:coffeeshopapp/data/wallet_data.dart';
import 'package:coffeeshopapp/domain/repository/wallet_repository.dart';
import 'package:meta/meta.dart';

part 'wallet_event.dart';

part 'wallet_state.dart';

class WalletBloc extends Bloc<WalletEvent, WalletState> {
  final WalletRepository walletRepository = WalletRepository();

  WalletBloc() : super(WalletInitial()) {
    on<WalletInitialEvent>(walletInitialEvent);
    on<WalletBackClickEvent>(walletBackClickEvent);
    on<WalletAddMoneyClickEvent>(walletAddMoneyClickEvent);
  }

  FutureOr<void> walletInitialEvent(
      WalletInitialEvent event, Emitter<WalletState> emit) async {
    emit(WalletLoadingState());
    await Future.delayed(Duration(seconds: 1));
    emit(WalletLoadedSuccessState(
      walletRepository.groupWalletsByDate(WalletData.wallets),
    ));
  }

  FutureOr<void> walletBackClickEvent(
      WalletBackClickEvent event, Emitter<WalletState> emit) {
    emit(WalletBackClickState());
  }

  FutureOr<void> walletAddMoneyClickEvent(
      WalletAddMoneyClickEvent event, Emitter<WalletState> emit) {
    emit(WalletAddMoneyClickState());
  }
}
