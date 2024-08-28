part of 'wishlist_bloc.dart';

@immutable
sealed class WishlistState {
  final int tabIndex;

  const WishlistState({required this.tabIndex});
}

final class WishlistInitial extends WishlistState {
  const WishlistInitial({required super.tabIndex});
}
