part of 'add_delivery_review_bloc.dart';

@immutable
sealed class AddDeliveryReviewState {}

final class AddDeliveryReviewInitial extends AddDeliveryReviewState {}

abstract class AddDeliveryReviewActionState extends AddDeliveryReviewState {}

class AddDeliveryReviewBackNavigationState extends AddDeliveryReviewActionState {}
class AddDeliveryReviewCancelNavigationState extends AddDeliveryReviewActionState {}
class AddDeliveryReviewSubmitNavigationState extends AddDeliveryReviewActionState {}
