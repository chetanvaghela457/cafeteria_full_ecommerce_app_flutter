part of 'coupons_list_bloc.dart';

@immutable
sealed class CouponsListEvent {}

class CouponsListInitialEvent extends CouponsListEvent {}

class CouponListCopyCodeClickEvent extends CouponsListEvent {
  String? code;

  CouponListCopyCodeClickEvent({this.code});
}

class CouponListBackClickEvent extends CouponsListEvent {}
