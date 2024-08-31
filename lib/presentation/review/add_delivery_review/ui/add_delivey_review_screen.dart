import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/review/add_delivery_review/bloc/add_delivery_review_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddDeliveyReviewScreen extends StatefulWidget {
  const AddDeliveyReviewScreen({super.key});

  @override
  State<AddDeliveyReviewScreen> createState() => _AddDeliveyReviewScreenState();
}

class _AddDeliveyReviewScreenState extends State<AddDeliveyReviewScreen> {

  AddDeliveryReviewBloc addDeliveryReviewBloc = AddDeliveryReviewBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              AppBar(addDeliveryReviewBloc)
            ],
          ),
        ),
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  AddDeliveryReviewBloc addDeliveryReviewBloc;

  AppBar(this.addDeliveryReviewBloc, {
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
                addDeliveryReviewBloc.add(
                    AddDeliveryReviewBackNavigationEvent());
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
