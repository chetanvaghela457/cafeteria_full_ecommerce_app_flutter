part of 'coupons_list_bloc.dart';

@immutable
sealed class CouponsListState {}

final class CouponsListInitial extends CouponsListState {}

abstract class CouponListActionState extends CouponsListState {}

class CouponListCopyCodeClickState extends CouponListActionState {}
class CouponListBackClickState extends CouponListActionState {}

class CouponListLoadingState extends CouponsListState {}

class CouponListLoadedSuccessState extends CouponsListState {
  final List<CouponsModel> couponsList;

  CouponListLoadedSuccessState(this.couponsList);
}

class CouponListErrorState extends CouponsListState {}
