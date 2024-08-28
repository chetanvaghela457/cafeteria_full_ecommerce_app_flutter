import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/presentation/dashboard/home/models/product_data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OwnerWidget extends StatelessWidget {
  Seller seller;

  OwnerWidget(
    this.seller, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration:
                BoxDecoration(color: Colors.red, shape: BoxShape.circle),
            child: ClipOval(
              child: SizedBox.fromSize(
                size: Size.fromRadius(24), // Image radius
                child: Image.asset(Assets.imgRestaurant1, fit: BoxFit.cover),
              ),
            ),
          ),
          flex: 2,
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(
                left: getProportionateScreenWidth(10),
                right: getProportionateScreenWidth(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  seller.name,
                  style: TextStyle(
                      color: AppColors.clrBlack,
                      fontSize: getProportionateScreenWidth(14),
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "(${seller.type}) ${seller.restaurant_name}",
                  style: TextStyle(
                      color: AppColors.clrGrey,
                      fontSize: getProportionateScreenWidth(12),
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
          flex: 10,
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(
              left: getProportionateScreenWidth(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  Assets.imgMessageIconDetails,
                  width: getProportionateScreenWidth(40),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(5),
                ),
                SvgPicture.asset(
                  Assets.imgCallIconDetails,
                  width: getProportionateScreenWidth(40),
                )
              ],
            ),
          ),
          flex: 5,
        )
      ],
    );
  }
}
