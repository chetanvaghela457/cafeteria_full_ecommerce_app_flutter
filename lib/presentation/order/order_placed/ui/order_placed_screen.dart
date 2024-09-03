import 'package:coffeeshopapp/core/configs/routes.dart';
import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/order/order_placed/bloc/order_placed_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderPlacedScreen extends StatelessWidget {
  OrderPlacedScreen({super.key});

  OrderPlacedBloc orderPlacedBloc = OrderPlacedBloc();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OrderPlacedBloc, OrderPlacedState>(
      bloc: orderPlacedBloc,
      listenWhen: (p, c) => c is OrderPlacedActionState,
      buildWhen: (p, c) => c is! OrderPlacedActionState,
      listener: (context, state) {
        if (state is OrderPlacedBackClickState) {
          Navigator.pop(context);
        } else if (state is OrderPlacedViewOrderClickState) {
          Navigator.pushNamed(context, AppRouter.REVIEW_SUMMARY);
        } else if (state is OrderPlacedViewReceiptClickState) {
          Navigator.pushNamed(context, AppRouter.E_RECEIPT);
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.backgroundColor,
          body: SafeArea(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      orderPlacedBloc.add(OrderPlacedBackClickEvent());
                    },
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: getProportionateScreenWidth(15),
                              top: getProportionateScreenHeight(15)),
                          child: SvgPicture.asset(
                            Assets.imgArrowBack,
                            width: getProportionateScreenWidth(40),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: SvgPicture.asset(
                            Assets.imgCheckCircleGreenFill,
                            width: getProportionateScreenWidth(120),
                          ),
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(15),
                        ),
                        Text(
                          Strings.orderPlacedText,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: AppColors.clrBlack,
                              fontWeight: FontWeight.w600,
                              fontSize: getProportionateScreenWidth(22)),
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(15),
                        ),
                        Text(
                          Strings.orderPlacedText1,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: AppColors.clrGrey,
                              fontWeight: FontWeight.w400,
                              fontSize: getProportionateScreenWidth(13)),
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(30),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: getProportionateScreenWidth(130),
                    width: double.infinity,
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            orderPlacedBloc
                                .add(OrderPlacedViewOrderClickEvent());
                          },
                          child: Center(
                            child: Container(
                              width: SizeConfig.screenWidth * 0.9,
                              padding: EdgeInsets.only(
                                  top: getProportionateScreenHeight(10),
                                  bottom: getProportionateScreenHeight(10)),
                              decoration: BoxDecoration(
                                  color: AppColors.primary,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              child: Text(
                                Strings.viewOrder,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: AppColors.clrWhite,
                                    fontWeight: FontWeight.w500,
                                    fontSize: getProportionateScreenWidth(17)),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            orderPlacedBloc
                                .add(OrderPlacedViewReceiptClickEvent());
                          },
                          child: Text(
                            Strings.viewEReceipt,
                            style: TextStyle(
                                color: AppColors.primary,
                                fontSize: getProportionateScreenWidth(16)),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
