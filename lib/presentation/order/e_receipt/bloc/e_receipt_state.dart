part of 'e_receipt_bloc.dart';

@immutable
sealed class EReceiptState {}

final class EReceiptInitial extends EReceiptState {}

abstract class EReceiptActionState extends EReceiptState {}

class EReceiptBackClickState extends EReceiptActionState {}
class EReceiptDownloadClickState extends EReceiptActionState {}

class EReceiptLoadingState extends EReceiptState {}

class EReceiptLoadedSuccessState extends EReceiptState {
  final List<Cart> cartData;

  EReceiptLoadedSuccessState(this.cartData);
}

class EReceiptErrorState extends EReceiptState {}