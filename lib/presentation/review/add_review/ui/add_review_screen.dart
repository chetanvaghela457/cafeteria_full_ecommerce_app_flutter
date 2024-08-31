import 'package:coffeeshopapp/core/configs/routes.dart';
import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/auth/widgets/textFieldWidget.dart';
import 'package:coffeeshopapp/presentation/dashboard/home/models/restaurant_data_model.dart';
import 'package:coffeeshopapp/presentation/review/add_review/bloc/add_review_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddReviewScreen extends StatefulWidget {
  Restaurant restaurant;

  AddReviewScreen(this.restaurant, {super.key});

  @override
  State<AddReviewScreen> createState() => _AddReviewScreenState();
}

class _AddReviewScreenState extends State<AddReviewScreen> {
  AddReviewBloc addReviewBloc = AddReviewBloc();

  TextEditingController reviewController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddReviewBloc, AddReviewState>(
      bloc: addReviewBloc,
      listenWhen: (previous, current) => current is AddReviewSubmitNavigationState || current is AddReviewCancelNavigationState || current is AddReviewBackNavigationState,
      buildWhen: (previous, current) => current is !AddReviewSubmitNavigationState || current is !AddReviewCancelNavigationState || current is !AddReviewBackNavigationState,
      listener: (context, state) {
        if (state is AddReviewBackNavigationState) {
          Navigator.pop(context);
        } else if (state is AddReviewCancelNavigationState) {
          Navigator.pop(context);
        } else if (state is AddReviewSubmitNavigationState) {
          Navigator.pushNamedAndRemoveUntil(context, AppRouter.DASHBOARD,(route) => false);
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.backgroundColor,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    height: double.infinity,
                    child: Stack(
                      children: [
                        Image.network(
                          widget.restaurant.images!.first.toString(),
                          width: double.infinity,
                          height: getProportionateScreenHeight(200),
                          fit: BoxFit.cover,
                        ),
                        AppBar(addReviewBloc),
                        Positioned(
                          left: getProportionateScreenWidth(15),
                          right: getProportionateScreenWidth(15),
                          top: getProportionateScreenHeight(120),
                          child: restaurantDetailsCard(),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: getProportionateScreenWidth(80),
                  padding: EdgeInsets.only(
                      left: getProportionateScreenWidth(10),
                      right: getProportionateScreenWidth(10)),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            addReviewBloc.add(AddReviewCancelNavigationEvent());
                          },
                          child: Container(
                            width: SizeConfig.screenWidth * 0.45,
                            padding: EdgeInsets.only(
                                top: getProportionateScreenHeight(10),
                                bottom: getProportionateScreenHeight(10)),
                            decoration: BoxDecoration(
                                color: AppColors.clrLightGrey,
                                borderRadius: BorderRadius.all(Radius.circular(15))),
                            child: Text(
                              Strings.cancel,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.w500,
                                  fontSize: getProportionateScreenWidth(17)),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            addReviewBloc.add(AddReviewSubmitNavigationEvent());
                          },
                          child: Container(
                            width: SizeConfig.screenWidth * 0.45,
                            padding: EdgeInsets.only(
                                top: getProportionateScreenHeight(10),
                                bottom: getProportionateScreenHeight(10)),
                            decoration: BoxDecoration(
                                color: AppColors.primary,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: Text(
                              Strings.submit,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: AppColors.clrWhite,
                                  fontWeight: FontWeight.w500,
                                  fontSize: getProportionateScreenWidth(17)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget restaurantDetailsCard() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            vertical: getProportionateScreenHeight(20),
            horizontal: getProportionateScreenWidth(10),
          ),
          decoration: BoxDecoration(
            color: AppColors.clrWhite,
            borderRadius: BorderRadius.all(Radius.circular(15)),
            boxShadow: [
              BoxShadow(
                color: AppColors.clrBlack.withAlpha(29),
                blurRadius: 1,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.restaurant.name.toString(),
                style: TextStyle(
                    color: AppColors.clrBlack,
                    fontSize: getProportionateScreenWidth(15),
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: getProportionateScreenHeight(5)),
              Row(
                children: [
                  SvgPicture.asset(Assets.imgMapPointGreen, width: 15),
                  SizedBox(width: getProportionateScreenWidth(5)),
                  Text(
                    widget.restaurant.address.toString(),
                    style: TextStyle(
                      color: AppColors.clrTextGrey,
                      fontSize: getProportionateScreenWidth(13),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              Container(
                width: double.infinity,
                color: AppColors.clrLightGrey,
                height: 0.5,
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: getProportionateScreenWidth(80),
                    height: getProportionateScreenWidth(80),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                widget.restaurant.menu!.first.image.toString()),
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
                        widget.restaurant.menu!.first.name.toString(),
                        style: TextStyle(
                            color: AppColors.clrBlack,
                            fontSize: getProportionateScreenWidth(15),
                            fontWeight: FontWeight.w600),
                      ),
                      Container(
                        width: getProportionateScreenWidth(220),
                        child: Text(
                          widget.restaurant.menu!.first.description.toString(),
                          maxLines: 2,
                          style: TextStyle(
                              color: AppColors.clrGrey,
                              overflow: TextOverflow.ellipsis,
                              fontSize: getProportionateScreenWidth(12),
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(10)),
                      Text(
                        "\$ ${widget.restaurant.menu!.first.price.toString()}",
                        style: TextStyle(
                            color: AppColors.clrBlack,
                            fontSize: getProportionateScreenWidth(15),
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
        Text(
          "How is your coffee?",
          style: TextStyle(
              color: AppColors.clrBlack,
              fontWeight: FontWeight.w600,
              fontSize: getProportionateScreenWidth(25)),
        ),
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
        Text(
          "Your overall rating",
          style: TextStyle(
              color: AppColors.clrGrey,
              fontSize: getProportionateScreenWidth(13),
              fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        RatingBar.builder(
          initialRating: 4.8,
          minRating: 1,
          itemSize: getProportionateScreenWidth(50),
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
          itemBuilder: (context, _) => Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {
            print(rating);
          },
        ),
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
        Center(
          child: TextFieldwidget(
            width: SizeConfig.screenWidth * 0.9,
            title: Strings.addDetailedReviews,
            hintText: Strings.enterHere,
            maxLines: 4,
            controller: reviewController,
          ),
        ),
      ],
    );
  }
}

class AppBar extends StatelessWidget {
  AddReviewBloc addReviewBloc;

  AppBar(
    this.addReviewBloc, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: getProportionateScreenWidth(15),
          right: getProportionateScreenWidth(15)),
      height: getProportionateScreenHeight(56),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                addReviewBloc.add(AddReviewBackNavigationEvent());
              },
              child: SvgPicture.asset(
                Assets.imgArrowBack,
                width: getProportionateScreenHeight(40),
              ),
            ),
            Expanded(
                child: Text(
              Strings.leaveReview,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: AppColors.clrWhite,
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
