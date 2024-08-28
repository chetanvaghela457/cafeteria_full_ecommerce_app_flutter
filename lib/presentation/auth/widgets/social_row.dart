import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/presentation/auth/widgets/SocialWidget.dart';
import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:flutter/material.dart';

class SocialRow extends StatelessWidget {
  const SocialRow({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    // SizeConfig.init(context);
    return Padding(
      padding:
      EdgeInsets.only(left: screenWidth * 0.1, right: screenWidth * 0.1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SocialWidget(
            icon: Assets.imgGoogle,
            backgroundColor: AppColors.clrWhite,
            width: getProportionateScreenWidth(60),
            height: getProportionateScreenHeight(60),
          ),
          SocialWidget(
            icon: Assets.imgFacebook,
            backgroundColor: AppColors.clrWhite,
            width: getProportionateScreenWidth(60),
            height: getProportionateScreenHeight(60),
          ),
          SocialWidget(
            icon: Assets.imgApple,
            backgroundColor: AppColors.clrWhite,
            width: getProportionateScreenWidth(60),
            height: getProportionateScreenHeight(60),
          ),
        ],
      ),
    );
  }
}