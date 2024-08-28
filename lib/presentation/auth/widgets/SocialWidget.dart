import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialWidget extends StatelessWidget {
  String? icon;
  double? width, height;
  Color? backgroundColor;
  VoidCallback? onTap;

  SocialWidget({
    this.height,
    this.width,
    this.backgroundColor,
    this.onTap,
    this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // SizeConfig.init(context);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? getProportionateScreenWidth(340),
        height: height ?? getProportionateScreenHeight(50),
        padding: EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 15),
        decoration: BoxDecoration(
          color: backgroundColor ?? AppColors.backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(30)),
          border: Border.all(
            width: 1,
            // assign the color to the border color
            color: AppColors.clrLightGrey,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon ?? Assets.imgFacebook,
              width: getProportionateScreenWidth(20),
            ),
          ],
        ),
      ),
    );
  }
}
