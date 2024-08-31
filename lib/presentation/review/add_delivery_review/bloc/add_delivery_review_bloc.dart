import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_delivery_review_event.dart';

part 'add_delivery_review_state.dart';

class AddDeliveryReviewBloc
    extends Bloc<AddDeliveryReviewEvent, AddDeliveryReviewState> {
  AddDeliveryReviewBloc() : super(AddDeliveryReviewInitial()) {
    on<AddDeliveryReviewBackNavigationEvent>(
        addDeliveryReviewBackNavigationEvent);
    on<AddDeliveryReviewCancelNavigationEvent>(
        addDeliveryReviewCancelNavigationEvent);
    on<AddDeliveryReviewSubmitNavigationEvent>(
        addDeliveryReviewSubmitNavigationEvent);
  }

  FutureOr<void> addDeliveryReviewBackNavigationEvent(
      AddDeliveryReviewBackNavigationEvent event,
      Emitter<AddDeliveryReviewState> emit) {
    emit(AddDeliveryReviewBackNavigationState());
  }

  FutureOr<void> addDeliveryReviewCancelNavigationEvent(
      AddDeliveryReviewCancelNavigationEvent event,
      Emitter<AddDeliveryReviewState> emit) {
    emit(AddDeliveryReviewCancelNavigationState());
  }

  FutureOr<void> addDeliveryReviewSubmitNavigationEvent(
      AddDeliveryReviewSubmitNavigationEvent event,
      Emitter<AddDeliveryReviewState> emit) {
    emit(AddDeliveryReviewSubmitNavigationState());
  }
}
