part of 'add_money_bloc.dart';

@immutable
sealed class AddMoneyState {}

final class AddMoneyInitial extends AddMoneyState {}
abstract class AddMoneyActionState extends AddMoneyState {}

class AddMoneyBackClickState extends AddMoneyActionState {}
class AddMoneyAddClickState extends AddMoneyActionState {}
class AddMoneyItemsClickState extends AddMoneyActionState {}

class AddMoneyLoadingState extends AddMoneyState {}

class AddMoneyLoadedSuccessState extends AddMoneyState {
  final List<String> moneyList;

  AddMoneyLoadedSuccessState(this.moneyList);
}

class AddMoneyErrorState extends AddMoneyState {}