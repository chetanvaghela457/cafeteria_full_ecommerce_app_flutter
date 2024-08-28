part of 'cart_bloc.dart';

@immutable
class CartState {
  final int deliveryTypeSelection;

  const CartState({this.deliveryTypeSelection = 0});
}

final class CartInitial extends CartState {}

class CartLoadingState extends CartState {}

class CartLoadedSuccessState extends CartState {
  final List<Cart> cartData;

  CartLoadedSuccessState(this.cartData);
}

class CartErrorState extends CartState {}

class CartBackClickActionState extends CartState {}

class CartPlusButtonActionState extends CartState {
  final Cart cart;

  CartPlusButtonActionState(this.cart);
}

class CartRemoveItemButtonActionState extends CartState {
  final Cart cart;

  CartRemoveItemButtonActionState(this.cart);
}

class CartMinusButtonActionState extends CartState {
  final Cart cart;

  CartMinusButtonActionState(this.cart);
}


