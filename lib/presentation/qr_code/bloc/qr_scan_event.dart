part of 'qr_scan_bloc.dart';

@immutable
sealed class QrScanEvent {}

class QrScanBackClickEvent extends QrScanEvent {}
