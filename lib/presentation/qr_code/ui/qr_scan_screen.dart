import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/qr_code/bloc/qr_scan_bloc.dart';
import 'package:coupon_uikit/coupon_uikit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrScanScreen extends StatelessWidget {
  QrScanScreen({super.key});

  QrScanBloc qrScanBloc = QrScanBloc();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<QrScanBloc, QrScanState>(
      bloc: qrScanBloc,
      listenWhen: (p, c) => c is QrScanActionState,
      buildWhen: (p, c) => c is! QrScanActionState,
      listener: (context, state) {
        if (state is QrScanBackClickState) {
          Navigator.pop(context);
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.bgColor,
          body: SafeArea(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppBar(qrScanBloc),
                  Expanded(
                    child: Center(
                      child: CouponCard(
                        width: SizeConfig.screenWidth * 0.8,
                        height: SizeConfig.screenHeight * 0.7,
                        curvePosition: SizeConfig.screenHeight * 0.3,
                        curveRadius: 50,
                        shadow: BoxShadow(
                            color: AppColors.clrTextFieldColor,
                            blurRadius: 20,
                            spreadRadius: 20),
                        borderRadius: 10,
                        decoration: BoxDecoration(
                          color: AppColors.clrWhite,
                        ),
                        firstChild: Center(
                          child: Container(
                            margin: EdgeInsets.all(30),
                            width: getProportionateScreenWidth(180),
                            height: getProportionateScreenWidth(180),
                            child: QrImageView(
                              data: '1234567890',
                              version: QrVersions.auto,
                              size: 150,
                            ),
                          ),
                        ),
                        secondChild: Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.only(
                              left: getProportionateScreenWidth(15),
                              top: getProportionateScreenHeight(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          Strings.name,
                                          style: TextStyle(
                                              color: AppColors.clrTextGrey,
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      13)),
                                        ),
                                        SizedBox(
                                          height:
                                              getProportionateScreenHeight(8),
                                        ),
                                        Text(
                                          "Esther Horward",
                                          style: TextStyle(
                                              overflow: TextOverflow.ellipsis,
                                              color: AppColors.clrBlack,
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      14)),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          Strings.coffee,
                                          style: TextStyle(
                                              color: AppColors.clrTextGrey,
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      13)),
                                        ),
                                        SizedBox(
                                          height:
                                              getProportionateScreenHeight(8),
                                        ),
                                        Text(
                                          "Esther Horward",
                                          style: TextStyle(
                                              overflow: TextOverflow.ellipsis,
                                              color: AppColors.clrBlack,
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      14)),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          Strings.cafe,
                                          style: TextStyle(
                                              color: AppColors.clrTextGrey,
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      13)),
                                        ),
                                        SizedBox(
                                          height:
                                              getProportionateScreenHeight(8),
                                        ),
                                        Text(
                                          "The Daily harward Cafe",
                                          maxLines: 1,
                                          style: TextStyle(
                                              color: AppColors.clrBlack,
                                              overflow: TextOverflow.ellipsis,
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      14)),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: getProportionateScreenWidth(10),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          Strings.qty,
                                          style: TextStyle(
                                              color: AppColors.clrTextGrey,
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      13)),
                                        ),
                                        SizedBox(
                                          height:
                                              getProportionateScreenHeight(8),
                                        ),
                                        Text(
                                          "2",
                                          style: TextStyle(
                                              overflow: TextOverflow.ellipsis,
                                              color: AppColors.clrBlack,
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      14)),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          Strings.pickupDate,
                                          style: TextStyle(
                                              color: AppColors.clrTextGrey,
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      13)),
                                        ),
                                        SizedBox(
                                          height:
                                              getProportionateScreenHeight(8),
                                        ),
                                        Text(
                                          "27 Dec 2023",
                                          style: TextStyle(
                                              overflow: TextOverflow.ellipsis,
                                              color: AppColors.clrBlack,
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      14)),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          Strings.pickupTime,
                                          style: TextStyle(
                                              color: AppColors.clrTextGrey,
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      13)),
                                        ),
                                        SizedBox(
                                          height:
                                              getProportionateScreenHeight(8),
                                        ),
                                        Text(
                                          "04:00 PM",
                                          style: TextStyle(
                                              overflow: TextOverflow.ellipsis,
                                              color: AppColors.clrBlack,
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      14)),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          Strings.paymentType,
                                          style: TextStyle(
                                              color: AppColors.clrTextGrey,
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      13)),
                                        ),
                                        SizedBox(
                                          height:
                                              getProportionateScreenHeight(8),
                                        ),
                                        Text(
                                          "Cash",
                                          style: TextStyle(
                                              overflow: TextOverflow.ellipsis,
                                              color: AppColors.clrBlack,
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      14)),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          Strings.totalPayment,
                                          style: TextStyle(
                                              color: AppColors.clrTextGrey,
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      13)),
                                        ),
                                        SizedBox(
                                          height:
                                              getProportionateScreenHeight(8),
                                        ),
                                        Text(
                                          "\$25.00",
                                          style: TextStyle(
                                              overflow: TextOverflow.ellipsis,
                                              color: AppColors.clrBlack,
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      14)),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class AppBar extends StatelessWidget {
  QrScanBloc qrScanBloc;

  AppBar(
    this.qrScanBloc, {
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
                qrScanBloc.add(QrScanBackClickEvent());
              },
              child: SvgPicture.asset(
                Assets.imgArrowBack,
                width: getProportionateScreenHeight(40),
              ),
            ),
            Expanded(
                child: Text(
              Strings.scanQr,
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
