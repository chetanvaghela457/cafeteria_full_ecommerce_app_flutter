part of 'total_reviews_bloc.dart';

@immutable
sealed class TotalReviewsState {}

final class TotalReviewsInitial extends TotalReviewsState {}

abstract class TotalReviewsActionState extends TotalReviewsState {}

class TotalReviewWriteReviewClickState extends TotalReviewsActionState {}
class TotalReviewBackClickState extends TotalReviewsActionState {}
