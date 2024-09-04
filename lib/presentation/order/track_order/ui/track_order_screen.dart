import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/order/track_order/bloc/track_order_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TrackOrderScreen extends StatefulWidget {
  const TrackOrderScreen({super.key});

  @override
  State<TrackOrderScreen> createState() => _TrackOrderScreenState();
}

class _TrackOrderScreenState extends State<TrackOrderScreen> {
  TrackOrderBloc trackOrderBloc = TrackOrderBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            AppBar(trackOrderBloc),
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: getProportionateScreenHeight(20),
                        horizontal: getProportionateScreenWidth(10),
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.clrWhite,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "widget.restaurant.name.toString()",
                            style: TextStyle(
                                color: AppColors.clrBlack,
                                fontSize: getProportionateScreenWidth(15),
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: getProportionateScreenHeight(5)),
                          Row(
                            children: [
                              SvgPicture.asset(Assets.imgMapPointGreen,
                                  width: 15),
                              SizedBox(
                                  width: getProportionateScreenWidth(5)),
                              Text(
                                "widget.restaurant.address.toString()",
                                style: TextStyle(
                                  color: AppColors.clrTextGrey,
                                  fontSize: getProportionateScreenWidth(13),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                              height: getProportionateScreenHeight(10)),
                          Container(
                            width: double.infinity,
                            color: AppColors.clrLightGrey,
                            height: 0.5,
                          ),
                          SizedBox(
                              height: getProportionateScreenHeight(10)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: getProportionateScreenWidth(80),
              decoration: BoxDecoration(
                  color: AppColors.clrWhite,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.clrBlack.withAlpha(29),
                        blurRadius: 1,
                        spreadRadius: 1),
                  ]),
              child: GestureDetector(
                onTap: () {
                  // cartBloc.add(CartPlaceOrderClickActionEvent());
                },
                child: Center(
                  child: Container(
                    width: SizeConfig.screenWidth * 0.9,
                    padding: EdgeInsets.only(
                        top: getProportionateScreenHeight(10),
                        bottom: getProportionateScreenHeight(10)),
                    decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Text(
                      Strings.trackLiveLocation,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: AppColors.clrWhite,
                          fontWeight: FontWeight.w500,
                          fontSize: getProportionateScreenWidth(17)),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  TrackOrderBloc trackOrderBloc;

  AppBar(
    this.trackOrderBloc, {
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
                // cartBloc.add(CartBackClickActionEvent());
              },
              child: SvgPicture.asset(
                Assets.imgArrowBack,
                width: getProportionateScreenHeight(40),
              ),
            ),
            Expanded(
                child: Text(
              Strings.trackOrder,
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
