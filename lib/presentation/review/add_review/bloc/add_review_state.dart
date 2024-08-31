part of 'add_review_bloc.dart';

@immutable
sealed class AddReviewState {}

final class AddReviewInitial extends AddReviewState {}

class AddReviewBackNavigationState extends AddReviewState {}
class AddReviewCancelNavigationState extends AddReviewState {}
class AddReviewSubmitNavigationState extends AddReviewState {}