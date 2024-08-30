part of 'delivery_address_list_bloc.dart';

@immutable
sealed class DeliveryAddressListEvent {}

class DeliveryAddressListInitialEvent extends DeliveryAddressListEvent {}

abstract class DeliveryAddressListActionEvent extends DeliveryAddressListEvent {}

class DeliveryAddressBackClickActionEvent extends DeliveryAddressListEvent {}
class DeliveryAddressApplyClickActionEvent extends DeliveryAddressListEvent {}
class DeliveryAddressAddNewClickActionEvent extends DeliveryAddressListEvent {}

class DeliveryAddressListSelectionEvent extends DeliveryAddressListEvent {
  final int selectedAddress;

  DeliveryAddressListSelectionEvent({required this.selectedAddress});
}