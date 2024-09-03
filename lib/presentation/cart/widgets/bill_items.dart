import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';

class BillItems extends StatelessWidget {
  String title;
  String price;

  BillItems(
      this.title,
      this.price, {
        super.key,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenWidth(5),
          bottom: getProportionateScreenWidth(5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              color: AppColors.clrTextGrey,
              fontSize: getProportionateScreenWidth(15),
            ),
          ),
          Text(
            "\$ ${price}",
            style: TextStyle(
              color: AppColors.clrBlack,
              fontWeight: FontWeight.w600,
              fontSize: getProportionateScreenWidth(15),
            ),
          ),
        ],
      ),
    );
  }
}