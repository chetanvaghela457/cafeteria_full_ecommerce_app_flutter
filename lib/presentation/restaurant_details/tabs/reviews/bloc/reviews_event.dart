part of 'reviews_bloc.dart';

@immutable
sealed class ReviewsEvent {}

class ReviewsActionEvent extends ReviewsEvent {}

class ReviewAddReviewButtonClickEvent extends ReviewsActionEvent {}
