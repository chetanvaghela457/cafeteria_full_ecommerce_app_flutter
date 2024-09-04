part of 'profile_bloc.dart';

@immutable
sealed class ProfileState {}

final class ProfileInitial extends ProfileState {}

abstract class ProfileActionState extends ProfileState {}

class ProfileYourProfileClickState extends ProfileActionState {}
class ProfileManageAddressClickState extends ProfileActionState {}
class ProfileCoffeePointsClickState extends ProfileActionState {}
class ProfilePaymentMethodsClickState extends ProfileActionState {}
class ProfileMyOrdersClickState extends ProfileActionState {}
class ProfileMyCouponsClickState extends ProfileActionState {}
class ProfileMyWalletsClickState extends ProfileActionState {}
class ProfileSettingsClickState extends ProfileActionState {}
class ProfileLogoutClickState extends ProfileActionState {}
class ProfileBackClickState extends ProfileActionState {}
class ProfileImageChangeIconClickState extends ProfileState {}

class LogoutYesClickState extends ProfileActionState {}
class LogoutNoClickState extends ProfileActionState {}