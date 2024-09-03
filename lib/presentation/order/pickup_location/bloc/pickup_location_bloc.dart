import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'pickup_location_event.dart';
part 'pickup_location_state.dart';

class PickupLocationBloc extends Bloc<PickupLocationEvent, PickupLocationState> {
  PickupLocationBloc() : super(PickupLocationInitial()) {
    on<PickupLocationScanQrClickEvent>(pickupLocationScanQrClickEvent);
    on<PickupLocationBackClickEvent>(pickupLocationBackClickEvent);
  }

  FutureOr<void> pickupLocationScanQrClickEvent(PickupLocationScanQrClickEvent event, Emitter<PickupLocationState> emit) {
    emit(PickupLocationScanQrClickState());
  }

  FutureOr<void> pickupLocationBackClickEvent(PickupLocationBackClickEvent event, Emitter<PickupLocationState> emit) {
    emit(PickupLocationBackClickState());
  }
}
