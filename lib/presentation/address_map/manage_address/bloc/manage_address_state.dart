part of 'manage_address_bloc.dart';

@immutable
sealed class ManageAddressState {}

final class ManageAddressInitial extends ManageAddressState {}

class ManageAddressLoadingState extends ManageAddressState {}

class ManageAddressLoadedSuccessState extends ManageAddressState {
  final List<AddressModel> addressData;

  ManageAddressLoadedSuccessState(this.addressData);
}

class ManageAddressListErrorState extends ManageAddressState {}

class ManageAddressBackClickActionState extends ManageAddressState {}
class ManageAddressAddNewClickActionState extends ManageAddressState {}