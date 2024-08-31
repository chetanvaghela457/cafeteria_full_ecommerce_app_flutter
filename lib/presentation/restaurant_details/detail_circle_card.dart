import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsCircleWidget extends StatelessWidget {
  String icon;
  String title;
  String subTitle;

  DetailsCircleWidget(
      this.icon,
      this.title,
      this.subTitle, {
        super.key,
      });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
          child: Column(
            children: [
              Container(
                width: getProportionateScreenWidth(65),
                height: getProportionateScreenWidth(65),
                decoration: BoxDecoration(
                    color: AppColors.clrTextFieldColor,
                    borderRadius: BorderRadius.all(Radius.circular(35))),
                padding: EdgeInsets.all(15),
                child: SvgPicture.asset(
                  Assets.imgUserSelected,
                  width: getProportionateScreenWidth(20),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(5),
              ),
              Text(
                "9500+",
                style: TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.w700,
                    fontSize: getProportionateScreenWidth(15)),
              ),
              Text(
                "Customer",
                style: TextStyle(
                    color: AppColors.clrGrey,
                    fontWeight: FontWeight.w400,
                    fontSize: getProportionateScreenWidth(12)),
              )
            ],
          ),
        ));
  }
}