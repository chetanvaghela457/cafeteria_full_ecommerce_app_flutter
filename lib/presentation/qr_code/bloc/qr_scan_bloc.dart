import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'qr_scan_event.dart';
part 'qr_scan_state.dart';

class QrScanBloc extends Bloc<QrScanEvent, QrScanState> {
  QrScanBloc() : super(QrScanInitial()) {
    on<QrScanBackClickEvent>(qrScanBackClickEvent);
  }

  FutureOr<void> qrScanBackClickEvent(QrScanBackClickEvent event, Emitter<QrScanState> emit) {
    emit(QrScanBackClickState());
  }
}
