part of 'wishlist_bloc.dart';

@immutable
sealed class WishlistEvent {}

class TabChange extends WishlistEvent {
  final int tabIndex;

  TabChange({required this.tabIndex});
}
