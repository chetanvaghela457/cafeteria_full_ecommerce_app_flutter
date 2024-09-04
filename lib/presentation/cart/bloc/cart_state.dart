part of 'cart_bloc.dart';

@immutable
class CartState {
  final int deliveryTypeSelection;

  const CartState({this.deliveryTypeSelection = 0});
}

abstract class CartActionState extends CartState {}

final class CartInitial extends CartState {}

class CartLoadingState extends CartState {}

class CartLoadedSuccessState extends CartState {
  final List<Cart> cartData;

  CartLoadedSuccessState(this.cartData);
}

class CartErrorState extends CartState {}

class CartBackClickActionState extends CartActionState {}

class CartDeliveryAddressAddActionState extends CartActionState {}

class CartPlaceOrderClickActionState extends CartActionState {}

class CartYesRemoveClickActionState extends CartActionState {
  final Cart cart;

  CartYesRemoveClickActionState(this.cart);
}

class CartCancelClickActionState extends CartActionState {}

class CartPlusButtonActionState extends CartState {
  final Cart cart;

  CartPlusButtonActionState(this.cart);
}

class CartRemoveItemButtonActionState extends CartActionState {
  final Cart cart;

  CartRemoveItemButtonActionState(this.cart);
}

class CartMinusButtonActionState extends CartState {
  final Cart cart;

  CartMinusButtonActionState(this.cart);
}


