import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';

class TextFieldwidget extends StatelessWidget {
  final String? title;
  final String? hintText;
  final double? width;
  final double? height;
  TextEditingController? controller;
  TextInputAction? action;
  TextInputType? inputType;
  bool? obsecure;
  Widget? suffixIcon;
  int? maxLines;
  Function(String)? onChanged;
  String? errorText;

  TextFieldwidget(
      {this.title,
      this.width,
      this.height,
      this.controller,
      this.hintText,
      this.action,
      this.inputType,
      this.suffixIcon,
        this.obsecure,
        this.maxLines,
        this.onChanged,
        this.errorText,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              title ?? '',
              style: TextStyle(color: AppColors.clrBlack, fontSize: 14),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
              controller: controller,
              style: TextStyle(color: AppColors.clrBlack, fontSize: 14),
              textInputAction: action ?? TextInputAction.next,
              keyboardType: inputType ?? TextInputType.text,
              obscureText: obsecure ?? false,
              maxLines: maxLines ?? 1,
              onChanged: onChanged,
              decoration: InputDecoration(
                hintText: hintText ?? '',
                errorText: errorText ?? null,
                hintStyle: TextStyle(color: AppColors.clrGrey, fontSize: 14),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: AppColors.clrBlack)),
                focusColor: Colors.grey[100],
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                suffixIcon: suffixIcon ?? SizedBox(),
                fillColor: AppColors.clrTextFieldColor,
                filled: true,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: AppColors.clrBlack)),
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: AppColors.clrGrey)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: AppColors.clrTextFieldColor)),
                /*errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: AppColors.clrRed)),*/
              ))
        ],
      ),
    );
  }
}
