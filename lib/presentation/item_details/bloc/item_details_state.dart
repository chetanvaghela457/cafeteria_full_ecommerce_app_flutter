part of 'item_details_bloc.dart';

@immutable
class ItemDetailsState {
  final int count;
  final int sugarSelection;
  final int availableSelection;

  const ItemDetailsState(
      {this.count = 0, this.sugarSelection = 0, this.availableSelection = 0});
}

final class ItemDetailsInitial extends ItemDetailsState {}

class ItemDetailsAddToCartNavigateClickState extends ItemDetailsState {}

class ItemDetailsCallClickState extends ItemDetailsState {}

class ItemDetailsMessageClickState extends ItemDetailsState {}

class ItemDetailsFavouriteClickState extends ItemDetailsState {}

class ItemDetailsShareClickState extends ItemDetailsState {}
