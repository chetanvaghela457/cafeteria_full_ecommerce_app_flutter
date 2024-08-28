import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AnimatedDot extends StatelessWidget {
  bool? isActive;

  AnimatedDot({
    this.isActive,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: 8,
      width: isActive! ? 20 : 8,
      decoration: BoxDecoration(
          color: isActive! ? AppColors.primary : AppColors.clrLightGrey,
          borderRadius: BorderRadius.all(Radius.circular(12))),
    );
  }
}