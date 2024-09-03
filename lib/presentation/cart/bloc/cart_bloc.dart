import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:coffeeshopapp/data/cart_data.dart';
import 'package:coffeeshopapp/presentation/cart/models/cart_model.dart';
import 'package:meta/meta.dart';

part 'cart_event.dart';

part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartState(deliveryTypeSelection: 0)) {
    on<CartInitialEvent>(cartInitialEvent);
    on<CartDeliveryAddressAddActionEvent>(cartDeliveryAddressAddActionEvent);
    on<CartPlusButtonActionEvent>(cartPlusButtonActionEvent);
    on<CartMinusButtonActionEvent>(cartMinusButtonActionEvent);
    on<CartRemoveItemButtonActionEvent>(cartRemoveItemButtonActionEvent);
    on<CartDeliveryTypeSelectionEvent>(cartDeliveryTypeSelectionEvent);
    on<CartBackClickActionEvent>(cartBackClickActionEvent);
    on<CartPlaceOrderClickActionEvent>(cartPlaceOrderClickActionEvent);
  }

  FutureOr<void> cartInitialEvent(
      CartInitialEvent event, Emitter<CartState> emit) async {
    emit(CartLoadingState());
    await Future.delayed(Duration(seconds: 1));
    emit(CartLoadedSuccessState(
      CartData.cartData.map((e) => Cart.fromJson(e)).toList(),
    ));
  }

  FutureOr<void> cartPlusButtonActionEvent(
      CartPlusButtonActionEvent event, Emitter<CartState> emit) {
    event.cart.quantity = event.cart.quantity! + 1;

    log(event.cart.quantity.toString());
    emit(CartPlusButtonActionState(event.cart));
  }

  FutureOr<void> cartMinusButtonActionEvent(
      CartMinusButtonActionEvent event, Emitter<CartState> emit) {
    event.cart.quantity = event.cart.quantity! - 1;
    log(event.cart.quantity.toString());
    emit(CartMinusButtonActionState(event.cart));
  }

  FutureOr<void> cartDeliveryTypeSelectionEvent(
      CartDeliveryTypeSelectionEvent event, Emitter<CartState> emit) {
    emit(CartState(deliveryTypeSelection: event.typeSelect));
  }

  FutureOr<void> cartRemoveItemButtonActionEvent(
      CartRemoveItemButtonActionEvent event, Emitter<CartState> emit) {
    emit(CartRemoveItemButtonActionState(event.cart));
  }

  FutureOr<void> cartBackClickActionEvent(
      CartBackClickActionEvent event, Emitter<CartState> emit) {
    emit(CartBackClickActionState());
  }

  FutureOr<void> cartDeliveryAddressAddActionEvent(
      CartDeliveryAddressAddActionEvent event, Emitter<CartState> emit) {
    emit(CartDeliveryAddressAddActionState());
  }

  FutureOr<void> cartPlaceOrderClickActionEvent(
      CartPlaceOrderClickActionEvent event, Emitter<CartState> emit) {
    emit(CartPlaceOrderClickActionState());
  }
}
