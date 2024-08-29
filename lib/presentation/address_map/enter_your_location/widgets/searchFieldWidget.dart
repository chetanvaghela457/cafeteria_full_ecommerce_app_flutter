import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';

class SearchFieldwidget extends StatelessWidget {
  final String? hintText;
  final double? width;
  final double? height;
  TextEditingController? controller;
  TextInputAction? action;
  TextInputType? inputType;
  bool? obsecure;
  Widget? suffixIcon;

  SearchFieldwidget(
      {
      this.width,
      this.height,
      this.controller,
      this.hintText,
      this.action,
      this.inputType,
      this.suffixIcon,
        this.obsecure,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(getProportionateScreenWidth(30)),
        color: AppColors.clrWhite
      ),
      child: TextFormField(
          controller: controller,
          style: TextStyle(color: AppColors.clrBlack, fontSize: 14),
          textInputAction: action ?? TextInputAction.next,
          keyboardType: inputType ?? TextInputType.text,
          obscureText: obsecure ?? false,
          decoration: InputDecoration(
            hintText: hintText ?? '',
            hintStyle: TextStyle(color: AppColors.clrGrey, fontSize: getProportionateScreenWidth(14)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: AppColors.clrWhite)),
            focusColor: Colors.grey[100],
            contentPadding:
                EdgeInsets.symmetric(vertical: 15, horizontal: 25),
            prefixIcon: suffixIcon ?? SizedBox(),
            fillColor: AppColors.clrWhite,
            filled: true,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide(color: AppColors.clrBlack)),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide(color: AppColors.clrGrey)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide(color: AppColors.clrTextFieldColor)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide(color: AppColors.clrRed)),
          )),
    );
  }
}
