part of 'reviews_bloc.dart';

@immutable
sealed class ReviewsState {}

final class ReviewsInitial extends ReviewsState {}

class ReviewAddReviewButtonClickState extends ReviewsState {}
