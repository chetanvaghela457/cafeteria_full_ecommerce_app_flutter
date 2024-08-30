part of 'delivery_address_list_bloc.dart';

@immutable
class DeliveryAddressListState {
  final int initialAddressSelection;

  DeliveryAddressListState({this.initialAddressSelection = 0});
}

final class DeliveryAddressListInitial extends DeliveryAddressListState {}

class DeliveryAddressListLoadingState extends DeliveryAddressListState {}

class DeliveryAddressListLoadedSuccessState extends DeliveryAddressListState {
  final List<AddressModel> addressData;

  DeliveryAddressListLoadedSuccessState(this.addressData);
}

class DeliveryAddressListErrorState extends DeliveryAddressListState {}

class DeliveryAddressBackClickActionState extends DeliveryAddressListState {}
class DeliveryAddressApplyClickActionState extends DeliveryAddressListState {}
class DeliveryAddressAddNewClickActionState extends DeliveryAddressListState {}
