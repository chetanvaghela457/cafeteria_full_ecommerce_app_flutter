part of 'profile_bloc.dart';

@immutable
sealed class ProfileEvent {}


class ProfileYourProfileClickEvent extends ProfileEvent {}
class ProfileManageAddressClickEvent extends ProfileEvent {}
class ProfileCoffeePointsClickEvent extends ProfileEvent {}
class ProfilePaymentMethodsClickEvent extends ProfileEvent {}
class ProfileMyOrdersClickEvent extends ProfileEvent {}
class ProfileMyCouponsClickEvent extends ProfileEvent {}
class ProfileMyWalletsClickEvent extends ProfileEvent {}
class ProfileSettingsClickEvent extends ProfileEvent {}
class ProfileLogoutClickEvent extends ProfileEvent {}
class ProfileImageChangeIconClickEvent extends ProfileEvent {}
class ProfileBackClickEvent extends ProfileEvent {}
