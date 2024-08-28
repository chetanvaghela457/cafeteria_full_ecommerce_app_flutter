import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  double? height;
  double? width;

  CommonButton(
      {required this.onPressed, required this.title, this.height, this.width,super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          minimumSize: Size.fromHeight(height ?? 55)),
      child: Text(title,style: TextStyle(
        color: AppColors.clrWhite,
        fontSize: 14
      ),),
    );
  }
}
