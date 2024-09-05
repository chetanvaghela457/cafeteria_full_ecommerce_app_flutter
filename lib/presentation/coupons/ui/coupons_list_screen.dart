import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/coupons/bloc/coupons_list_bloc.dart';
import 'package:coffeeshopapp/presentation/coupons/models/coupons_model.dart';
import 'package:coupon_uikit/coupon_uikit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CouponsListScreen extends StatefulWidget {
  CouponsListScreen({super.key});

  @override
  State<CouponsListScreen> createState() => _CouponsListScreenState();
}

class _CouponsListScreenState extends State<CouponsListScreen> {
  CouponsListBloc couponsListBloc = CouponsListBloc();

  List<CouponsModel> couponsData = [];

  @override
  void initState() {
    couponsListBloc.add(CouponsListInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBar(couponsListBloc),
            Expanded(
              child: BlocConsumer<CouponsListBloc, CouponsListState>(
                bloc: couponsListBloc,
                listenWhen: (previous, current) =>
                    current is CouponListActionState,
                buildWhen: (previous, current) =>
                    current is! CouponListActionState,
                listener: (context, state) {
                  if (state is CouponListBackClickState) {
                    Navigator.pop(context);
                  } else if (state is CouponListCopyCodeClickState) {
                    Navigator.pop(context);
                  }
                },
                builder: (context, state) {
                  switch (state.runtimeType) {
                    case CouponListLoadingState:
                      return Container(
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      );

                    case CouponListErrorState:
                      return Center(
                        child: Text(
                          "Error While Loading Data",
                          style: TextStyle(color: AppColors.primary),
                        ),
                      );

                    case CouponListLoadedSuccessState:
                      final successState =
                          state as CouponListLoadedSuccessState;

                      couponsData = successState.couponsList;
                      return couponsDataView(couponsData, state);

                    default:
                      return SizedBox();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget couponsDataView(
      List<CouponsModel> couponsData, CouponListLoadedSuccessState state) {
    return Container(
      margin: EdgeInsets.only(
          left: getProportionateScreenWidth(15),
          right: getProportionateScreenWidth(15)),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            Text(
              Strings.couponsForYou,
              style: TextStyle(
                  color: AppColors.clrBlack,
                  fontSize: getProportionateScreenWidth(15),
                  fontWeight: FontWeight.w500),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              // padding around the grid
              itemCount: couponsData.length,
              // total number of items
              itemBuilder: (context, index) {
                return couponItem(couponsData[index]);
              },
            )
          ],
        ),
      ),
    );
  }

  Widget couponItem(CouponsModel couponsData) {
    return Container(
      margin: EdgeInsets.only(
        top: getProportionateScreenHeight(15),
      ),
      child: CouponCard(
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight * 0.17,
        curvePosition: SizeConfig.screenHeight * 0.05,
        curveRadius: 50,
        shadow: BoxShadow(
            color: AppColors.clrTextFieldColor, blurRadius: 2, spreadRadius: 2),
        borderRadius: getProportionateScreenWidth(15),
        decoration: BoxDecoration(
          color: AppColors.clrWhite,
        ),
        firstChild: Padding(
          padding: EdgeInsets.only(
              left: getProportionateScreenWidth(25),
              right: getProportionateScreenWidth(25)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                couponsData.code.toString(),
                style: TextStyle(
                    color: AppColors.clrBlack,
                    fontSize: getProportionateScreenWidth(15),
                    fontWeight: FontWeight.w600),
              ),
              Text(
                couponsData.text.toString(),
                style: TextStyle(
                    color: AppColors.clrGrey,
                    fontSize: getProportionateScreenWidth(13)),
              ),
            ],
          ),
        ),
        secondChild: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: EdgeInsets.only(
                      left: getProportionateScreenWidth(25),
                      right: getProportionateScreenWidth(25)),
                  child: Text(
                    couponsData.percentageText.toString(),
                    style: TextStyle(
                        color: AppColors.clrBlack,
                        fontWeight: FontWeight.w500,
                        fontSize: getProportionateScreenWidth(14)),
                  )),
              GestureDetector(
                onTap: () async {
                  await Clipboard.setData(
                          ClipboardData(text: couponsData.code.toString()))
                      .then((_) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Code Copied to Clipboard")));
                  });
                  couponsListBloc.add(
                      CouponListCopyCodeClickEvent(code: couponsData.code));
                },
                child: Container(
                  width: SizeConfig.screenWidth * 0.95,
                  height: getProportionateScreenHeight(40),
                  decoration: BoxDecoration(
                      color: AppColors.clrTextFieldColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft:
                              Radius.circular(getProportionateScreenWidth(15)),
                          bottomRight: Radius.circular(
                              getProportionateScreenWidth(15)))),
                  child: Center(
                      child: Text(
                    Strings.copyCode,
                    style: TextStyle(
                        color: AppColors.primary,
                        fontWeight: FontWeight.w600,
                        fontSize: getProportionateScreenWidth(15)),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  CouponsListBloc couponsListBloc;

  AppBar(
    this.couponsListBloc, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(56),
      margin: EdgeInsets.only(
          left: getProportionateScreenWidth(15),
          right: getProportionateScreenWidth(15)),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                couponsListBloc.add(CouponListBackClickEvent());
              },
              child: SvgPicture.asset(
                Assets.imgArrowBack,
                width: getProportionateScreenHeight(40),
              ),
            ),
            Expanded(
                child: Text(
              Strings.myCoupons,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: AppColors.clrBlack,
                  fontSize: getProportionateScreenWidth(17),
                  fontWeight: FontWeight.w600),
            )),
            SizedBox(
              width: getProportionateScreenWidth(40),
            ),
          ]),
    );
  }
}
