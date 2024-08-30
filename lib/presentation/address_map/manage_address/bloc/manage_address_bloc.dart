import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:coffeeshopapp/data/address_data.dart';
import 'package:coffeeshopapp/presentation/address_map/delivery_address_list/models/address_model.dart';
import 'package:meta/meta.dart';

part 'manage_address_event.dart';

part 'manage_address_state.dart';

class ManageAddressBloc extends Bloc<ManageAddressEvent, ManageAddressState> {
  ManageAddressBloc() : super(ManageAddressInitial()) {
    on<ManageAddressInitialEvent>(manageAddressInitialEvent);
    on<ManageAddressBackClickActionEvent>(manageAddressBackClickActionEvent);
    on<ManageAddressAddNewClickActionEvent>(
        manageAddressAddNewClickActionEvent);
  }

  FutureOr<void> manageAddressInitialEvent(
      ManageAddressInitialEvent event, Emitter<ManageAddressState> emit) async {
    emit(ManageAddressLoadingState());
    await Future.delayed(Duration(seconds: 1));
    emit(ManageAddressLoadedSuccessState(
      AddressData.addresses.map((e) => AddressModel.fromJson(e)).toList(),
    ));
  }

  FutureOr<void> manageAddressBackClickActionEvent(
      ManageAddressBackClickActionEvent event,
      Emitter<ManageAddressState> emit) {
    emit(ManageAddressBackClickActionState());
  }

  FutureOr<void> manageAddressAddNewClickActionEvent(
      ManageAddressAddNewClickActionEvent event,
      Emitter<ManageAddressState> emit) {
    emit(ManageAddressAddNewClickActionState());
  }
}
