import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/dashboard/home/models/restaurant_data_model.dart';
import 'package:coffeeshopapp/presentation/item_details/widgets/expandable_text.dart';
import 'package:coffeeshopapp/presentation/item_details/widgets/owner_widget.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  Restaurant restaurant;

  AboutScreen(this.restaurant, {super.key});

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
            Text(
              Strings.about,
              style: TextStyle(
                  color: AppColors.clrBlack,
                  fontSize: getProportionateScreenWidth(14),
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            ExpandableText(
              restaurant.description.toString(),
              trimLines: 3,
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            Text(
              Strings.seller,
              style: TextStyle(
                  color: AppColors.clrBlack,
                  fontSize: getProportionateScreenWidth(14),
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            OwnerWidget(restaurant.sellerInfo!.ownerName,
                restaurant.sellerInfo!.ownerImage, "Coffee", restaurant.name),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            Text(
              Strings.openingHours,
              style: TextStyle(
                  color: AppColors.clrBlack,
                  fontSize: getProportionateScreenWidth(14),
                  fontWeight: FontWeight.w500),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: getProportionateScreenHeight(10),
                  bottom: getProportionateScreenHeight(10)),
              width: double.infinity,
              height: 0.5,
              color: AppColors.clrLightGrey,
            ),
            openHoursWidget(
                Strings.monday, restaurant.openHours!.monday.toString()),
            openHoursWidget(
                Strings.tuesday, restaurant.openHours!.tuesday.toString()),
            openHoursWidget(
                Strings.wednesday, restaurant.openHours!.wednesday.toString()),
            openHoursWidget(
                Strings.thursday, restaurant.openHours!.thursday.toString()),
            openHoursWidget(
                Strings.friday, restaurant.openHours!.friday.toString()),
            openHoursWidget(
                Strings.saturday, restaurant.openHours!.saturday.toString()),
            openHoursWidget(
                Strings.sunday, restaurant.openHours!.sunday.toString()),
          ],
        ),
      ),
    );
  }

  Widget openHoursWidget(String title, String time) {
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(5),
          bottom: getProportionateScreenHeight(2)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
                color: AppColors.clrGrey,
                fontSize: getProportionateScreenWidth(13)),
          ),
          Text(
            time,
            style: TextStyle(
                color: AppColors.clrBlack,
                fontSize: getProportionateScreenWidth(13)),
          )
        ],
      ),
    );
  }
}
