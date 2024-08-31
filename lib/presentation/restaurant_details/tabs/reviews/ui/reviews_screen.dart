import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/address_map/enter_your_location/widgets/searchFieldWidget.dart';
import 'package:coffeeshopapp/presentation/dashboard/home/models/restaurant_data_model.dart';
import 'package:coffeeshopapp/presentation/restaurant_details/widgets/review_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReviewsScreen extends StatelessWidget {
  List<Review>? reviews;

  ReviewsScreen(this.reviews, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: getProportionateScreenWidth(15),
          right: getProportionateScreenWidth(15),
          top: getProportionateScreenHeight(15)),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RichText(
                    text: TextSpan(
                  text: Strings.reviews,
                  style: TextStyle(
                      color: AppColors.clrBlack,
                      fontSize: getProportionateScreenWidth(15),
                      fontWeight: FontWeight.w500),
                )),
                Row(
                  children: [
                    SvgPicture.asset(
                      Assets.imgLink,
                      width: getProportionateScreenWidth(15),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(5),
                    ),
                    Text(
                      Strings.addReview,
                      style: TextStyle(
                          color: AppColors.primary,
                          fontSize: getProportionateScreenWidth(15)),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            ReviewListWidget(reviews)
          ],
        ),
      ),
    );
  }


}
