import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:coffeeshopapp/data/cart_data.dart';
import 'package:coffeeshopapp/presentation/cart/models/cart_model.dart';
import 'package:meta/meta.dart';

part 'review_summary_event.dart';

part 'review_summary_state.dart';

class ReviewSummaryBloc extends Bloc<ReviewSummaryEvent, ReviewSummaryState> {
  ReviewSummaryBloc() : super(ReviewSummaryInitial()) {
    on<ReviewSummaryInitialEvent>(reviewSummaryInitialEvent);
    on<ReviewSummaryBackClickEvent>(reviewSummaryBackClickEvent);
    on<ReviewSummaryContinueClickEvent>(reviewSummaryContinueClickEvent);
  }

  FutureOr<void> reviewSummaryInitialEvent(
      ReviewSummaryInitialEvent event, Emitter<ReviewSummaryState> emit) async {
    emit(ReviewSummaryLoadingState());
    await Future.delayed(Duration(seconds: 1));
    emit(ReviewSummaryLoadedSuccessState(
      CartData.cartData.map((e) => Cart.fromJson(e)).toList(),
    ));
  }

  FutureOr<void> reviewSummaryBackClickEvent(
      ReviewSummaryBackClickEvent event, Emitter<ReviewSummaryState> emit) {
    emit(ReviewSummaryBackClickState());
  }

  FutureOr<void> reviewSummaryContinueClickEvent(
      ReviewSummaryContinueClickEvent event, Emitter<ReviewSummaryState> emit) {
    emit(ReviewSummaryContinueClickState());
  }
}
