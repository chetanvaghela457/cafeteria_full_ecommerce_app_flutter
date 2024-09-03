import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/cart/models/cart_model.dart';
import 'package:coffeeshopapp/presentation/cart/widgets/bill_items.dart';
import 'package:coffeeshopapp/presentation/order/review_summary/bloc/review_summary_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReviewSummary extends StatefulWidget {
  ReviewSummary({super.key});

  @override
  State<ReviewSummary> createState() => _ReviewSummaryState();
}

class _ReviewSummaryState extends State<ReviewSummary> {
  ReviewSummaryBloc reviewSummaryBloc = ReviewSummaryBloc();

  @override
  void initState() {
    reviewSummaryBloc.add(ReviewSummaryInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppBar(reviewSummaryBloc),
                  Expanded(
                    child: BlocConsumer<ReviewSummaryBloc, ReviewSummaryState>(
                      bloc: reviewSummaryBloc,
                      listenWhen: (previous, current) => current is ReviewSummaryActionState,
                      buildWhen: (previous, current) => current is! ReviewSummaryActionState,
                      listener: (context, state) {
                        if (state is ReviewSummaryContinueClickState) {
                          // Navigator.pushNamed(
                          //   context,
                          //   AppRouter.DELIVERY_ADDRESS_LIST,
                          // );
                        } else if (state is ReviewSummaryBackClickState) {
                          Navigator.pop(context);
                        }
                      },
                      builder: (context, state) {
                        switch (state.runtimeType) {
                          case ReviewSummaryLoadingState:
                            return Container(
                              child: Center(
                                child: CircularProgressIndicator(),
                              ),
                            );

                          case ReviewSummaryErrorState:
                            return Center(
                              child: Text(
                                "Error While Loading Data",
                                style: TextStyle(color: AppColors.primary),
                              ),
                            );

                          case ReviewSummaryLoadedSuccessState:
                            final successState =
                            state as ReviewSummaryLoadedSuccessState;

                            return orderData(successState.cartData, state);

                          default:
                            return SizedBox();
                        }
                      },
                    ),
                  ),
                ],
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
                  reviewSummaryBloc.add(ReviewSummaryContinueClickEvent());
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
                      Strings.continueTxt,
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

  Widget orderData(List<Cart> cartList, ReviewSummaryState state) {
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
              Strings.orderDetails,
              style: TextStyle(
                  color: AppColors.clrBlack,
                  fontSize: getProportionateScreenWidth(15),
                  fontWeight: FontWeight.w500),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              // padding around the grid
              itemCount: cartList.length,
              // total number of items
              itemBuilder: (context, index) {
                return cartItem(cartList[index]);
              },
            ),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: getProportionateScreenHeight(5),
                  bottom: getProportionateScreenHeight(20)),
              width: double.infinity,
              height: 0.5,
              color: AppColors.clrLightGrey,
            ),
            BillItems(Strings.orderType, "Delivery"),
            BillItems(Strings.deliveryAddress, "15015, sdhjgdaj..."),
            BillItems(Strings.orderDate, "Dec 27, 2023 | 10:00 AM"),
            BillItems(Strings.couponCode, "CFA568AAR"),
            Container(
              margin: EdgeInsets.only(
                  top: getProportionateScreenHeight(20),
                  bottom: getProportionateScreenHeight(5)),
              width: double.infinity,
              height: 0.5,
              color: AppColors.clrLightGrey,
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            BillItems(Strings.subTotal, "19.50"),
            BillItems(Strings.taxes, "5.02"),
            BillItems(Strings.deliveryCharge, "2.30"),
            BillItems(Strings.discount, "0.0"),
            Container(
              margin: EdgeInsets.only(
                  top: getProportionateScreenHeight(7),
                  bottom: getProportionateScreenHeight(7)),
              width: double.infinity,
              height: 0.5,
              color: AppColors.clrLightGrey,
            ),
            BillItems(Strings.total, "0.0"),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: getProportionateScreenHeight(20),
                  bottom: getProportionateScreenHeight(20)),
              width: double.infinity,
              height: 0.5,
              color: AppColors.clrLightGrey,
            ),
            Text(
              Strings.orderType,
              style: TextStyle(
                  color: AppColors.clrBlack,
                  fontSize: getProportionateScreenWidth(15),
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
          ],
        ),
      ),
    );
  }

  Widget cartItem(Cart cartData) {
    return Container(
      margin: EdgeInsets.only(top: getProportionateScreenHeight(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: getProportionateScreenWidth(80),
                    height: getProportionateScreenWidth(80),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(cartData.imageUrl.toString()),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(10),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        cartData.name.toString(),
                        style: TextStyle(
                            color: AppColors.clrBlack,
                            fontSize: getProportionateScreenWidth(15),
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "${cartData.type.toString()} | ${cartData.coffeeType.toString()}",
                        style: TextStyle(
                            color: AppColors.clrGrey,
                            fontSize: getProportionateScreenWidth(12),
                            fontWeight: FontWeight.w400),
                      ),
                      GestureDetector(
                        onTap: () {
                          // cartBloc.add(
                          //     CartRemoveItemButtonActionEvent(cart: cartData));
                        },
                        child: Text(
                          "Qty 2",
                          style: TextStyle(
                              color: AppColors.clrBlack,
                              fontSize: getProportionateScreenWidth(13),
                              fontWeight: FontWeight.w500,),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  ReviewSummaryBloc reviewSummaryBloc;

  AppBar(
      this.reviewSummaryBloc, {
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
                reviewSummaryBloc.add(ReviewSummaryBackClickEvent());
              },
              child: SvgPicture.asset(
                Assets.imgArrowBack,
                width: getProportionateScreenHeight(40),
              ),
            ),
            Expanded(
                child: Text(
                  Strings.reviewSummary,
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