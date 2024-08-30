part of 'manage_address_bloc.dart';

@immutable
sealed class ManageAddressEvent {}

class ManageAddressInitialEvent extends ManageAddressEvent {}

abstract class DeliveryAddressListActionEvent extends ManageAddressEvent {}

class ManageAddressBackClickActionEvent extends ManageAddressEvent {}
class ManageAddressAddNewClickActionEvent extends ManageAddressEvent {}
