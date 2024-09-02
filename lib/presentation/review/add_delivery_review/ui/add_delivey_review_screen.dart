import 'package:coffeeshopapp/core/configs/routes.dart';
import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/auth/widgets/textFieldWidget.dart';
import 'package:coffeeshopapp/presentation/review/add_delivery_review/bloc/add_delivery_review_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddDeliveyReviewScreen extends StatefulWidget {
  const AddDeliveyReviewScreen({super.key});

  @override
  State<AddDeliveyReviewScreen> createState() => _AddDeliveyReviewScreenState();
}

class _AddDeliveyReviewScreenState extends State<AddDeliveyReviewScreen> {
  AddDeliveryReviewBloc addDeliveryReviewBloc = AddDeliveryReviewBloc();

  TextEditingController reviewController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddDeliveryReviewBloc, AddDeliveryReviewState>(
      bloc: addDeliveryReviewBloc,
      listenWhen: (previous, current) =>
          current is AddDeliveryReviewActionState,
      buildWhen: (previous, current) =>
          current is! AddDeliveryReviewActionState,
      listener: (context, state) {
        if (state is AddDeliveryReviewBackNavigationState) {
          Navigator.pop(context);
        } else if (state is AddDeliveryReviewCancelNavigationState) {
          Navigator.pop(context);
        } else if (state is AddDeliveryReviewSubmitNavigationState) {
          Navigator.pushNamedAndRemoveUntil(
              context, AppRouter.DASHBOARD, (route) => false);
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
                  Expanded(
                    child: Column(
                      children: [
                        AppBar(addDeliveryReviewBloc),
                        SizedBox(
                          height: getProportionateScreenHeight(15),
                        ),
                        Container(
                          width: getProportionateScreenWidth(130),
                          height: getProportionateScreenWidth(130),
                          decoration: BoxDecoration(
                              color: AppColors.clrTextFieldColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(70)),
                              image: DecorationImage(
                                  image: AssetImage(
                                    Assets.imgRestaurant1,
                                  ),
                                  fit: BoxFit.cover)),
                          padding: EdgeInsets.all(15),
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(15),
                        ),
                        Text(
                          "John Doe",
                          style: TextStyle(
                              color: AppColors.clrBlack,
                              fontSize: getProportionateScreenWidth(20),
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "500+ Five Star Deliveries",
                          style: TextStyle(
                              color: AppColors.clrTextGrey,
                              fontSize: getProportionateScreenWidth(13),
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(30),
                        ),
                        Text(
                          "How was your delivery experience with John?",
                          textAlign: TextAlign.center,
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
                              addDeliveryReviewBloc.add(
                                  AddDeliveryReviewCancelNavigationEvent());
                            },
                            child: Container(
                              width: SizeConfig.screenWidth * 0.45,
                              padding: EdgeInsets.only(
                                  top: getProportionateScreenHeight(10),
                                  bottom: getProportionateScreenHeight(10)),
                              decoration: BoxDecoration(
                                  color: AppColors.clrLightGrey,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
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
                              addDeliveryReviewBloc.add(
                                  AddDeliveryReviewSubmitNavigationEvent());
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
          ),
        );
      },
    );
  }
}

class AppBar extends StatelessWidget {
  AddDeliveryReviewBloc addDeliveryReviewBloc;

  AppBar(
    this.addDeliveryReviewBloc, {
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
                addDeliveryReviewBloc
                    .add(AddDeliveryReviewBackNavigationEvent());
              },
              child: SvgPicture.asset(
                Assets.imgArrowBack,
                width: getProportionateScreenHeight(40),
              ),
            ),
            Expanded(
                child: Text(
              Strings.rateDeliveryMan,
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
