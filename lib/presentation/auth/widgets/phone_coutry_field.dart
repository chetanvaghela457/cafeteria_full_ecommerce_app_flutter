import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';

class PhoneTextField extends StatelessWidget {
  ValueChanged<CountryCode?>? onCountryCodeChanged;
  TextEditingController? mobileNoCont;
  GestureTapCallback? onTap;
  bool? enabled;
  double? width, height;
  Color? backgroundColor;
  String? countryCode1 = "+91", title;
  Function(String)? onChanged;
  String? errorText;

  PhoneTextField(
      {this.onCountryCodeChanged,
      this.onChanged,
      this.errorText,
      this.mobileNoCont,
      this.onTap,
      this.enabled,
      this.countryCode1,
      this.width,
      this.height,
      this.title,
      this.backgroundColor,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Text(
              title ?? Strings.phoneNumber,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(12),),
            ),
          ),
          Container(
            height: getProportionateScreenHeight(50),
            width: width ?? getProportionateScreenWidth(340),
            decoration: BoxDecoration(
              color: backgroundColor ?? AppColors.clrTextFieldColor,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border: Border.all(
                width: 1,
                // assign the color to the border color
                color: AppColors.clrTextFieldColor,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CountryListPick(
                    pickerBuilder: (context, CountryCode? countryCode) {
                      return Row(
                        children: [
                          Text(countryCode!.dialCode.toString(),
                              style: const TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF999999))),
                          const SizedBox(width: 06),
                          const Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Color(0xFF999999),
                          )
                        ],
                      );
                    },
                    // To disable option set to false
                    theme: CountryTheme(
                      isShowFlag: false,
                      isShowTitle: false,
                      isShowCode: true,
                      isDownIcon: true,
                      showEnglishName: true,
                    ),
                    initialSelection: countryCode1 ?? '+91',
                    onChanged: onCountryCodeChanged,
                    useUiOverlay: true,
                    useSafeArea: false),
                Expanded(
                  child: TextFormField(
                    controller: mobileNoCont,
                    style: TextStyle(fontSize: getProportionateScreenWidth(14)),
                    keyboardType: TextInputType.number,
                    onChanged: onChanged,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      focusColor: Colors.grey[100],
                      hintText: "Enter phone number",
                      hintStyle:
                          TextStyle(fontSize: getProportionateScreenWidth(14),color: AppColors.clrGrey),
                      fillColor: AppColors.clrTextFieldColor,
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: AppColors.clrTextFieldColor)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: AppColors.clrTextFieldColor)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: AppColors.clrTextFieldColor)),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: AppColors.clrRed)),
                    ),
                    textInputAction: TextInputAction.next,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
