import 'package:coffeeshopapp/core/configs/routes.dart';
import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/dashboard/home/models/restaurant_data_model.dart';
import 'package:coffeeshopapp/presentation/restaurant_details/widgets/review_list_widget.dart';
import 'package:coffeeshopapp/presentation/review/total_reviews/bloc/total_reviews_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TotalReviewsScreen extends StatelessWidget {
  Restaurant restaurant;

  TotalReviewsBloc totalReviewBloc = TotalReviewsBloc();

  TotalReviewsScreen(this.restaurant, {super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TotalReviewsBloc, TotalReviewsState>(
      bloc: totalReviewBloc,
      listenWhen: (previous, current) =>
          current is TotalReviewsActionState,
      buildWhen: (previous, current) =>
          current is! TotalReviewsActionState,
      listener: (context, state) {
        if (state is TotalReviewWriteReviewClickState) {
          Navigator.pushNamed(
            context,
            AppRouter.ADD_DELIVERY_REVIEW,
            arguments: restaurant
          );
        }else if (state is TotalReviewBackClickState) {
          Navigator.pop(context);
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.backgroundColor,
          body: SafeArea(
            child: Container(
              margin: EdgeInsets.only(
                  left: getProportionateScreenWidth(15),
                  right: getProportionateScreenWidth(15)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          AppBar(totalReviewBloc),
                          Container(
                            width: double.infinity,
                            height: getProportionateScreenHeight(200),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Center(
                                    child: Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "4.8",
                                            style: TextStyle(
                                                color: AppColors.clrBlack,
                                                fontSize:
                                                    getProportionateScreenWidth(
                                                        40),
                                                fontWeight: FontWeight.w600),
                                          ),
                                          RatingBar.builder(
                                            initialRating: 4.8,
                                            minRating: 1,
                                            itemSize:
                                                getProportionateScreenWidth(25),
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemPadding: EdgeInsets.symmetric(
                                                horizontal: 1.0),
                                            itemBuilder: (context, _) => Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            onRatingUpdate: (rating) {
                                              print(rating);
                                            },
                                          ),
                                          SizedBox(
                                            height:
                                                getProportionateScreenHeight(
                                                    10),
                                          ),
                                          Text(
                                            "(1050 Reviews)",
                                            style: TextStyle(
                                                color: AppColors.clrGrey,
                                                fontSize:
                                                    getProportionateScreenWidth(
                                                        15),
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  flex: 1,
                                ),
                                Container(
                                  width: 0.5,
                                  height: getProportionateScreenHeight(180),
                                  color: AppColors.clrLightGrey,
                                ),
                                Expanded(
                                  child: Center(
                                    child: Container(
                                      padding: EdgeInsets.only(
                                          left: getProportionateScreenWidth(10),
                                          right:
                                              getProportionateScreenWidth(10)),
                                      child: Column(
                                        children: [
                                          RatingProgressWidget(
                                              "5",
                                              SizeConfig.screenWidth * 0.35,
                                              SizeConfig.screenWidth * 0.3),
                                          RatingProgressWidget(
                                              "4",
                                              SizeConfig.screenWidth * 0.35,
                                              SizeConfig.screenWidth * 0.2),
                                          RatingProgressWidget(
                                              "3",
                                              SizeConfig.screenWidth * 0.35,
                                              SizeConfig.screenWidth * 0.11),
                                          RatingProgressWidget(
                                              "2",
                                              SizeConfig.screenWidth * 0.35,
                                              SizeConfig.screenWidth * 0.16),
                                          RatingProgressWidget(
                                              "1",
                                              SizeConfig.screenWidth * 0.35,
                                              SizeConfig.screenWidth * 0.07)
                                        ],
                                      ),
                                    ),
                                  ),
                                  flex: 1,
                                )
                              ],
                            ),
                          ),
                          ReviewListWidget(restaurant.reviews),
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
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          totalReviewBloc
                              .add(TotalReviewWriteReviewClickEvent());
                        },
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
                            Strings.writeReview,
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
          ),
        );
      },
    );
  }
}

class RatingProgressWidget extends StatelessWidget {
  String text;
  double width1;
  double width2;

  RatingProgressWidget(
    this.text,
    this.width1,
    this.width2, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(5),
          bottom: getProportionateScreenWidth(5)),
      child: Row(
        children: [
          Text(
            text,
            style: TextStyle(
                color: AppColors.clrBlack,
                fontSize: getProportionateScreenWidth(15),
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            width: getProportionateScreenWidth(10),
          ),
          Stack(
            children: [
              Container(
                width: width1,
                height: getProportionateScreenHeight(7),
                decoration: BoxDecoration(
                    color: AppColors.clrLightGrey,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
              Container(
                width: width2,
                height: getProportionateScreenHeight(7),
                decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              )
            ],
          )
        ],
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  TotalReviewsBloc totalReviewBloc;

  AppBar(
    this.totalReviewBloc, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(56),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                totalReviewBloc.add(TotalReviewBackClickEvent());
              },
              child: SvgPicture.asset(
                Assets.imgArrowBack,
                width: getProportionateScreenHeight(40),
              ),
            ),
            Expanded(
                child: Text(
              Strings.review,
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
