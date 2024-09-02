part of 'total_reviews_bloc.dart';

@immutable
sealed class TotalReviewsEvent {}

abstract class TotalReviewActionEvent extends TotalReviewsEvent {}

class TotalReviewWriteReviewClickEvent extends TotalReviewActionEvent {}
class TotalReviewBackClickEvent extends TotalReviewActionEvent {}
