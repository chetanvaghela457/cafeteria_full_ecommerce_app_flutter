part of 'e_receipt_bloc.dart';

@immutable
sealed class EReceiptEvent {}

class EReceiptInitialEvent extends EReceiptEvent {}

class EReceiptBackClickEvent extends EReceiptEvent {}
class EReceiptDownloadClickEvent extends EReceiptEvent {}