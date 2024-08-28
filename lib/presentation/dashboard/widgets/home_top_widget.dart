import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/dashboard/widgets/searchTextField.dart';
import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreenTopWidget extends StatelessWidget {
  const HomeScreenTopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    
    // SizeConfig.init(context);
    return Container(
        height: getProportionateScreenHeight(200),
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30))
        ),
      child: SafeArea(
        child: Column(
          children: [
            locationWithIconsWidget(),
            searchFilterWidget()
          ],
        ),
      ),
    );
  }


  Widget searchFilterWidget() {
    return Container(
      margin: EdgeInsets.only(left: getProportionateScreenWidth(15),right: getProportionateScreenWidth(15),top: getProportionateScreenHeight(30)),
      child: Row(
        children: [
          Expanded(flex: 10,child: SearchTextField(
            hintText: Strings.search,
            suffixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(Assets.imgSearchGreen,width: getProportionateScreenWidth(10),),
            ),
          )),
          Expanded(flex: 2,child: SvgPicture.asset(Assets.imgFilterWhite,width: getProportionateScreenWidth(40),)),
        ],
      ),
    );
  }

  Widget locationWithIconsWidget() {

    return Container(
      margin: EdgeInsets.only(left: getProportionateScreenWidth(15),right: getProportionateScreenWidth(15),top: getProportionateScreenHeight(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(Strings.location,style: TextStyle(color: AppColors.clrLightGrey,fontSize: 10),),
              SizedBox(height: getProportionateScreenHeight(5),),
              Row(
                children: [
                  SvgPicture.asset(Assets.imgMapPointYellow,width: getProportionateScreenWidth(17),),
                  SizedBox(width: getProportionateScreenWidth(5),),
                  Text("New York, USA",style: TextStyle(color: AppColors.clrWhite,fontSize: getProportionateScreenWidth(14)),),
                  SizedBox(width: getProportionateScreenWidth(5),),
                  Icon(Icons.arrow_drop_down_sharp,size: 20,color: AppColors.clrWhite,)
                ],
              )
            ],
          ),
          Row(
            children: [
              SvgPicture.asset(Assets.imgCartHome,width: getProportionateScreenWidth(35),),
              SizedBox(width: getProportionateScreenWidth(15),),
              SvgPicture.asset(Assets.imgNotificationBellWhite,width: getProportionateScreenWidth(35),),
            ],
          )
        ],
      ),
    );

  }

}
