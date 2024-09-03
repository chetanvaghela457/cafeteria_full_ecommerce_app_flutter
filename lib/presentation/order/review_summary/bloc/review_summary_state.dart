part of 'review_summary_bloc.dart';

@immutable
sealed class ReviewSummaryState {}

final class ReviewSummaryInitial extends ReviewSummaryState {}

abstract class ReviewSummaryActionState extends ReviewSummaryState {}

class ReviewSummaryBackClickState extends ReviewSummaryActionState {}
class ReviewSummaryContinueClickState extends ReviewSummaryActionState {}

class ReviewSummaryLoadingState extends ReviewSummaryState {}

class ReviewSummaryLoadedSuccessState extends ReviewSummaryState {
  final List<Cart> cartData;

  ReviewSummaryLoadedSuccessState(this.cartData);
}

class ReviewSummaryErrorState extends ReviewSummaryState {}