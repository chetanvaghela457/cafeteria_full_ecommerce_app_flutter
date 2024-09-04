part of 'add_money_bloc.dart';

@immutable
sealed class AddMoneyEvent {}

class AddMoneyInitialEvent extends AddMoneyEvent {}

class AddMoneyBackClickEvent extends AddMoneyEvent {}
class AddMoneyAddClickEvent extends AddMoneyEvent {}
class AddMoneyItemsClickEvent extends AddMoneyEvent {}