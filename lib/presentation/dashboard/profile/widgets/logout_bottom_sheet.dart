import 'package:coffeeshopapp/core/configs/routes.dart';
import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/address_map/enter_your_location/bloc/enter_your_location_bloc.dart';
import 'package:coffeeshopapp/presentation/auth/widgets/textFieldWidget.dart';
import 'package:coffeeshopapp/presentation/dashboard/profile/bloc/profile_bloc.dart';
import 'package:coffeeshopapp/presentation/splash/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LogoutBottomSheet extends StatelessWidget {
  ProfileBloc profileBloc = ProfileBloc();

  LogoutBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(builder: (context, setS) {
      return BlocConsumer<ProfileBloc, ProfileState>(
        bloc: profileBloc,
        listenWhen: (previous, current) => current is ProfileActionState,
        buildWhen: (previous, current) => current is! ProfileActionState,
        listener: (context, state) {
          if (state is LogoutYesClickState) {
            Navigator.of(context).pop();
            Navigator.pushNamedAndRemoveUntil(
                context, AppRouter.LOGIN, (route) => false);
          } else if (state is LogoutNoClickState) {
            Navigator.of(context).pop();
          }
        },
        builder: (context, state) {
          return Container(
            width: SizeConfig.screenWidth,
            height: SizeConfig.screenHeight * 0.25,
            decoration: BoxDecoration(
                color: AppColors.clrWhite,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(getProportionateScreenWidth(30)),
                    topRight:
                        Radius.circular(getProportionateScreenWidth(30)))),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(15),
                ),
                Container(
                  width: SizeConfig.screenWidth * 0.2,
                  height: 4,
                  color: AppColors.clrTextFieldColor,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(25),
                ),
                Text(
                  Strings.logout,
                  style: TextStyle(
                      color: AppColors.clrBlack,
                      fontSize: getProportionateScreenWidth(17),
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(15),
                ),
                Container(
                  width: SizeConfig.screenWidth * 0.7,
                  height: 0.5,
                  color: AppColors.clrTextFieldColor,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(15),
                ),
                Text(
                  Strings.logoutText,
                  style: TextStyle(
                      color: AppColors.clrTextGrey,
                      fontSize: getProportionateScreenWidth(15),
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          profileBloc.add(LogoutNoClickEvent());
                        },
                        child: Container(
                          width: SizeConfig.screenWidth * 0.42,
                          padding: EdgeInsets.only(
                              top: getProportionateScreenHeight(10),
                              bottom: getProportionateScreenHeight(10)),
                          decoration: BoxDecoration(
                              color: AppColors.clrTextFieldColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Text(
                            Strings.cancel,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppColors.primary,
                                fontWeight: FontWeight.w500,
                                fontSize: getProportionateScreenWidth(15)),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          profileBloc.add(LogoutYesClickEvent());
                        },
                        child: Container(
                          width: SizeConfig.screenWidth * 0.42,
                          padding: EdgeInsets.only(
                              top: getProportionateScreenHeight(10),
                              bottom: getProportionateScreenHeight(10)),
                          decoration: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Text(
                            Strings.logout,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppColors.clrWhite,
                                fontWeight: FontWeight.w500,
                                fontSize: getProportionateScreenWidth(15)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      );
    });
  }
}
