part of 'review_summary_bloc.dart';

@immutable
sealed class ReviewSummaryEvent {}

class ReviewSummaryInitialEvent extends ReviewSummaryEvent {}

class ReviewSummaryBackClickEvent extends ReviewSummaryEvent {}
class ReviewSummaryContinueClickEvent extends ReviewSummaryEvent {}
