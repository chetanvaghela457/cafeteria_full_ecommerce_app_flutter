import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileItems extends StatelessWidget {
  String title, icon;
  Function onClick;

  ProfileItems(
      this.title,
      this.icon,
      this.onClick, {
        super.key,
      });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onClick();
      },
      child: Container(
        height: getProportionateScreenHeight(50),
        margin: EdgeInsets.only(
          left: getProportionateScreenWidth(15),
          right: getProportionateScreenWidth(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  icon,
                  width: getProportionateScreenWidth(25),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(15),
                ),
                Text(
                  title,
                  style: TextStyle(
                      color: AppColors.clrBlack,
                      fontWeight: FontWeight.w400,
                      fontSize: getProportionateScreenWidth(15)),
                )
              ],
            ),
            Icon(
              Icons.keyboard_arrow_right,
              color: AppColors.primary,
              size: getProportionateScreenWidth(20),
            )
          ],
        ),
      ),
    );
  }
}