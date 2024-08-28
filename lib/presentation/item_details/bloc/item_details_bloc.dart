import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'item_details_event.dart';

part 'item_details_state.dart';

class ItemDetailsBloc extends Bloc<ItemDetailsEvent, ItemDetailsState> {
  ItemDetailsBloc() : super(ItemDetailsState(count: 0)) {
    on<ItemDetailsAddToCartNavigateClickEvent>(itemDetailsAddToCartNavigateClickEvent);
    on<ItemDetailsCallClickEvent>(itemDetailsCallClickEvent);
    on<ItemDetailsMessageClickEvent>(itemDetailsMessageClickEvent);
    on<ItemDetailsFavouriteClickEvent>(itemDetailsFavouriteClickEvent);
    on<ItemDetailsShareClickEvent>(itemDetailsShareClickEvent);
    on<ItemDetailsPlusButtonActionEvent>(itemDetailsPlusButtonActionEvent);
    on<ItemDetailsMinusButtonActionEvent>(itemDetailsMinusButtonActionEvent);
    on<ItemDetailsAvailableInSelectEvent>(itemDetailsAvailableInSelectEvent);
    on<ItemDetailsSugarSelectEvent>(itemDetailsSugarSelectEvent);
  }

  FutureOr<void> itemDetailsPlusButtonActionEvent(
      ItemDetailsPlusButtonActionEvent event, Emitter<ItemDetailsState> emit) {
    emit(ItemDetailsState(count: state.count + 1));
  }

  FutureOr<void> itemDetailsMinusButtonActionEvent(
      ItemDetailsMinusButtonActionEvent event, Emitter<ItemDetailsState> emit) {
    emit(ItemDetailsState(count: state.count - 1));
  }

  FutureOr<void> itemDetailsAvailableInSelectEvent(
      ItemDetailsAvailableInSelectEvent event, Emitter<ItemDetailsState> emit) {
    emit(ItemDetailsState(availableSelection: event.initialSelect));
  }

  FutureOr<void> itemDetailsSugarSelectEvent(
      ItemDetailsSugarSelectEvent event, Emitter<ItemDetailsState> emit) {
    emit(ItemDetailsState(sugarSelection: event.initialSelect));
  }

  FutureOr<void> itemDetailsAddToCartNavigateClickEvent(
      ItemDetailsAddToCartNavigateClickEvent event,
      Emitter<ItemDetailsState> emit) {
    emit(ItemDetailsAddToCartNavigateClickState());
  }

  FutureOr<void> itemDetailsCallClickEvent(
      ItemDetailsCallClickEvent event, Emitter<ItemDetailsState> emit) {
    emit(ItemDetailsCallClickState());
  }

  FutureOr<void> itemDetailsMessageClickEvent(
      ItemDetailsMessageClickEvent event, Emitter<ItemDetailsState> emit) {
    emit(ItemDetailsMessageClickState());
  }

  FutureOr<void> itemDetailsFavouriteClickEvent(
      ItemDetailsFavouriteClickEvent event, Emitter<ItemDetailsState> emit) {
    emit(ItemDetailsFavouriteClickState());
  }

  FutureOr<void> itemDetailsShareClickEvent(
      ItemDetailsShareClickEvent event, Emitter<ItemDetailsState> emit) {
    emit(ItemDetailsShareClickState());
  }
}
