import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'profile_event.dart';

part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileInitial()) {
    on<ProfileYourProfileClickEvent>(profileYourProfileClickEvent);
    on<ProfileManageAddressClickEvent>(profileManageAddressClickEvent);
    on<ProfileCoffeePointsClickEvent>(profileCoffeePointsClickEvent);
    on<ProfilePaymentMethodsClickEvent>(profilePaymentMethodsClickEvent);
    on<ProfileMyOrdersClickEvent>(profileMyOrdersClickEvent);
    on<ProfileMyCouponsClickEvent>(profileMyCouponsClickEvent);
    on<ProfileMyWalletsClickEvent>(profileMyWalletsClickEvent);
    on<ProfileSettingsClickEvent>(profileSettingsClickEvent);
    on<ProfileLogoutClickEvent>(profileLogoutClickEvent);
    on<ProfileImageChangeIconClickEvent>(profileImageChangeIconClickEvent);
    on<ProfileBackClickEvent>(profileBackClickEvent);
  }

  FutureOr<void> profileLogoutClickEvent(
      ProfileLogoutClickEvent event, Emitter<ProfileState> emit) {
    emit(ProfileLogoutClickState());
  }

  FutureOr<void> profileSettingsClickEvent(
      ProfileSettingsClickEvent event, Emitter<ProfileState> emit) {
    emit(ProfileSettingsClickState());
  }

  FutureOr<void> profileMyWalletsClickEvent(
      ProfileMyWalletsClickEvent event, Emitter<ProfileState> emit) {
    emit(ProfileMyWalletsClickState());
  }

  FutureOr<void> profileMyCouponsClickEvent(
      ProfileMyCouponsClickEvent event, Emitter<ProfileState> emit) {
    emit(ProfileMyCouponsClickState());
  }

  FutureOr<void> profileMyOrdersClickEvent(
      ProfileMyOrdersClickEvent event, Emitter<ProfileState> emit) {
    emit(ProfileMyOrdersClickState());
  }

  FutureOr<void> profilePaymentMethodsClickEvent(
      ProfilePaymentMethodsClickEvent event, Emitter<ProfileState> emit) {
    emit(ProfilePaymentMethodsClickState());
  }

  FutureOr<void> profileCoffeePointsClickEvent(
      ProfileCoffeePointsClickEvent event, Emitter<ProfileState> emit) {
    emit(ProfileCoffeePointsClickState());
  }

  FutureOr<void> profileManageAddressClickEvent(
      ProfileManageAddressClickEvent event, Emitter<ProfileState> emit) {
    emit(ProfileManageAddressClickState());
  }

  FutureOr<void> profileYourProfileClickEvent(
      ProfileYourProfileClickEvent event, Emitter<ProfileState> emit) {
    emit(ProfileYourProfileClickState());
  }

  FutureOr<void> profileImageChangeIconClickEvent(
      ProfileImageChangeIconClickEvent event, Emitter<ProfileState> emit) {
    emit(ProfileImageChangeIconClickState());
  }

  FutureOr<void> profileBackClickEvent(
      ProfileBackClickEvent event, Emitter<ProfileState> emit) {
    emit(ProfileBackClickState());
  }
}
