import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:flutter/material.dart';

class OrWidget extends StatelessWidget {

  String? title;

  OrWidget({this.title,super.key});

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Center(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: screenWidth*0.33,
              height: 0.5,
              color: AppColors.clrLightGrey,
            ),
            Text(title ?? Strings.orSignInWith,style: TextStyle(
              color: AppColors.clrGrey,
              fontSize: 13
            ),),
            Container(
              width: screenWidth*0.33,
              height: 0.5,
              color: AppColors.clrLightGrey,
            )
          ],
        ),
      ),
    );
  }
}
