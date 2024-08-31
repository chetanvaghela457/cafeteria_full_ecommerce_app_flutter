import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_review_event.dart';

part 'add_review_state.dart';

class AddReviewBloc extends Bloc<AddReviewEvent, AddReviewState> {
  AddReviewBloc() : super(AddReviewInitial()) {
    on<AddReviewBackNavigationEvent>(addReviewBackNavigationEvent);
    on<AddReviewCancelNavigationEvent>(addReviewCancelNavigationEvent);
    on<AddReviewSubmitNavigationEvent>(addReviewSubmitNavigationEvent);
  }

  FutureOr<void> addReviewBackNavigationEvent(
      AddReviewBackNavigationEvent event, Emitter<AddReviewState> emit) {
    emit(AddReviewBackNavigationState());
  }

  FutureOr<void> addReviewCancelNavigationEvent(
      AddReviewCancelNavigationEvent event, Emitter<AddReviewState> emit) {
    emit(AddReviewCancelNavigationState());
  }

  FutureOr<void> addReviewSubmitNavigationEvent(
      AddReviewSubmitNavigationEvent event, Emitter<AddReviewState> emit) {
    emit(AddReviewSubmitNavigationState());
  }
}
