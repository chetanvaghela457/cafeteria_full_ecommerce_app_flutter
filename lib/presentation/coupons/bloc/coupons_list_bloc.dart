import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:coffeeshopapp/data/coupon_data.dart';
import 'package:coffeeshopapp/presentation/coupons/models/coupons_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meta/meta.dart';

part 'coupons_list_event.dart';
part 'coupons_list_state.dart';

class CouponsListBloc extends Bloc<CouponsListEvent, CouponsListState> {
  CouponsListBloc() : super(CouponsListInitial()) {
    on<CouponsListInitialEvent>(couponsListInitialEvent);
    on<CouponListCopyCodeClickEvent>(couponListCopyCodeClickEvent);
    on<CouponListBackClickEvent>(couponListBackClickEvent);
  }

  FutureOr<void> couponsListInitialEvent(CouponsListInitialEvent event, Emitter<CouponsListState> emit) async {
    emit(CouponListLoadingState());
    await Future.delayed(Duration(seconds: 1));
    emit(CouponListLoadedSuccessState(
      CouponData.coupons.map((e) => CouponsModel.fromJson(e)).toList(),
    ));
  }

  FutureOr<void> couponListCopyCodeClickEvent(CouponListCopyCodeClickEvent event, Emitter<CouponsListState> emit) async {
    await Future.delayed(Duration(seconds: 1));
    emit(CouponListCopyCodeClickState());
  }

  FutureOr<void> couponListBackClickEvent(CouponListBackClickEvent event, Emitter<CouponsListState> emit) {
    emit(CouponListBackClickState());
  }
}
