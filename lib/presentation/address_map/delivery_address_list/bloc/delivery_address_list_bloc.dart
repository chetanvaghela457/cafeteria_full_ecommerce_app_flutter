import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:coffeeshopapp/data/address_data.dart';
import 'package:coffeeshopapp/presentation/address_map/delivery_address_list/models/address_model.dart';
import 'package:meta/meta.dart';

part 'delivery_address_list_event.dart';

part 'delivery_address_list_state.dart';

class DeliveryAddressListBloc
    extends Bloc<DeliveryAddressListEvent, DeliveryAddressListState> {
  DeliveryAddressListBloc()
      : super(DeliveryAddressListState(initialAddressSelection: 0)) {
    on<DeliveryAddressListInitialEvent>(deliveryAddressListInitialEvent);
    on<DeliveryAddressBackClickActionEvent>(
        deliveryAddressBackClickActionEvent);
    on<DeliveryAddressListSelectionEvent>(deliveryAddressListSelectionEvent);
    on<DeliveryAddressApplyClickActionEvent>(
        deliveryAddressApplyClickActionEvent);
    on<DeliveryAddressAddNewClickActionEvent>(
        deliveryAddressAddNewClickActionEvent);
  }

  FutureOr<void> deliveryAddressListInitialEvent(
      DeliveryAddressListInitialEvent event,
      Emitter<DeliveryAddressListState> emit) async {
    emit(DeliveryAddressListLoadingState());
    await Future.delayed(Duration(seconds: 1));
    emit(DeliveryAddressListLoadedSuccessState(
      AddressData.addresses.map((e) => AddressModel.fromJson(e)).toList(),
    ));
  }

  FutureOr<void> deliveryAddressBackClickActionEvent(
      DeliveryAddressBackClickActionEvent event,
      Emitter<DeliveryAddressListState> emit) {
    emit(DeliveryAddressBackClickActionState());
  }

  FutureOr<void> deliveryAddressListSelectionEvent(
      DeliveryAddressListSelectionEvent event,
      Emitter<DeliveryAddressListState> emit) {
    emit(DeliveryAddressListState(
        initialAddressSelection: event.selectedAddress));
  }

  FutureOr<void> deliveryAddressApplyClickActionEvent(
      DeliveryAddressApplyClickActionEvent event,
      Emitter<DeliveryAddressListState> emit) {
    emit(DeliveryAddressApplyClickActionState());
  }

  FutureOr<void> deliveryAddressAddNewClickActionEvent(
      DeliveryAddressAddNewClickActionEvent event,
      Emitter<DeliveryAddressListState> emit) {
    emit(DeliveryAddressAddNewClickActionState());
  }
}
