part of 'add_delivery_review_bloc.dart';

@immutable
sealed class AddDeliveryReviewEvent {}

abstract class AddDeliveryReviewActionEvent extends AddDeliveryReviewEvent {}

class AddDeliveryReviewBackNavigationEvent extends AddDeliveryReviewActionEvent {}
class AddDeliveryReviewCancelNavigationEvent extends AddDeliveryReviewActionEvent {}
class AddDeliveryReviewSubmitNavigationEvent extends AddDeliveryReviewActionEvent {}