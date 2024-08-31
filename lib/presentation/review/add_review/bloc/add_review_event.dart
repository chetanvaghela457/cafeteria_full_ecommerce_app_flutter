part of 'add_review_bloc.dart';

@immutable
sealed class AddReviewEvent {}

abstract class AddReviewActionEvent extends AddReviewEvent {}

class AddReviewBackNavigationEvent extends AddReviewActionEvent {}
class AddReviewCancelNavigationEvent extends AddReviewActionEvent {}
class AddReviewSubmitNavigationEvent extends AddReviewActionEvent {}
