part of 'qr_scan_bloc.dart';

@immutable
sealed class QrScanState {}

final class QrScanInitial extends QrScanState {}

abstract class QrScanActionState extends QrScanState {}

class QrScanBackClickState extends QrScanActionState {}
