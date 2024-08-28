part of 'item_details_bloc.dart';

@immutable
sealed class ItemDetailsEvent {}

abstract class ItemDetailsActionEvent extends ItemDetailsEvent {}

class ItemDetailsPlusButtonActionEvent extends ItemDetailsEvent {}

class ItemDetailsMinusButtonActionEvent extends ItemDetailsEvent {}

class ItemDetailsAvailableInSelectEvent extends ItemDetailsEvent {
  final int initialSelect;

  ItemDetailsAvailableInSelectEvent({required this.initialSelect});
}

class ItemDetailsSugarSelectEvent extends ItemDetailsEvent {
  final int initialSelect;

  ItemDetailsSugarSelectEvent({required this.initialSelect});
}

class ItemDetailsAddToCartNavigateClickEvent extends ItemDetailsActionEvent {}
class ItemDetailsCallClickEvent extends ItemDetailsActionEvent {}
class ItemDetailsMessageClickEvent extends ItemDetailsActionEvent {}
class ItemDetailsFavouriteClickEvent extends ItemDetailsActionEvent {}
class ItemDetailsShareClickEvent extends ItemDetailsActionEvent {}
