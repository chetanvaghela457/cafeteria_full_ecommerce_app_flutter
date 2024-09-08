import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:flutter/material.dart';

class GenderWidget extends StatefulWidget {

  String? dropDownValue;
  Function(String)? onChanged;

  GenderWidget({this.dropDownValue,this.onChanged, super.key});

  @override
  State<GenderWidget> createState() => _GenderWidgetState();
}

class _GenderWidgetState extends State<GenderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Strings.gender,
            style: TextStyle(color: AppColors.clrBlack, fontSize: getProportionateScreenWidth(12)),
          ),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          Container(
            height: getProportionateScreenHeight(50),
            width: getProportionateScreenWidth(340),
            decoration: BoxDecoration(
              color: AppColors.clrTextFieldColor,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border: Border.all(
                width: 1,
                // assign the color to the border color
                color: AppColors.clrTextFieldColor,
              ),
            ),
            child: DropdownButton(
              // Initial Value
              value: widget.dropDownValue,
              dropdownColor: AppColors.clrTextFieldColor,
              padding: EdgeInsets.only(left: 10,right: 10),
              // Down Arrow Icon
              icon: const Icon(
                Icons.keyboard_arrow_down_rounded,
                color: Color(0xFF999999),
              ),
              // Array list of items
              items: Strings.genderList.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Container(
                      color: AppColors.clrTextFieldColor,
                      width: getProportionateScreenWidth(280),
                      child: Text(
                        items,
                        style: TextStyle(
                            color: AppColors.clrGrey, fontSize: getProportionateScreenWidth(14)),
                      )),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  widget.dropDownValue = newValue!;
                  widget.onChanged!(newValue.toString());
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
