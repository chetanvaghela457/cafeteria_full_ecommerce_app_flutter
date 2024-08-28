part of 'navbar_bloc.dart';

@immutable
sealed class NavbarEvent {}

class TabChange extends NavbarEvent {
  final int tabIndex;

  TabChange({required this.tabIndex});
}
