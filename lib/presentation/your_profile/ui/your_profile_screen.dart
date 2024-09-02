import 'package:coffeeshopapp/core/configs/routes.dart';
import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/auth/widgets/gender_widget.dart';
import 'package:coffeeshopapp/presentation/auth/widgets/phone_coutry_field.dart';
import 'package:coffeeshopapp/presentation/auth/widgets/textFieldWidget.dart';
import 'package:coffeeshopapp/presentation/splash/widgets/common_button.dart';
import 'package:coffeeshopapp/presentation/your_profile/bloc/your_profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class YourProfileScreen extends StatefulWidget {
  YourProfileScreen({super.key});

  @override
  State<YourProfileScreen> createState() => _YourProfileScreenState();
}

class _YourProfileScreenState extends State<YourProfileScreen> {
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  YourProfileBloc yourProfileBloc = YourProfileBloc();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<YourProfileBloc, YourProfileState>(
      bloc: yourProfileBloc,
      listenWhen: (previous, current) => current is YourProfileActionState,
      buildWhen: (previous, current) => current is! YourProfileActionState,
      listener: (context, state) {
        if (state is YourProfileBackClickState) {
          Navigator.pop(context);
        } else if (state is YourProfileButtonClickState) {
          //API call
          Navigator.pop(context);
        } else if (state is YourProfileSelectImageClickEvent) {}
      },
      builder: (context, state) {
        return Scaffold(
            backgroundColor: AppColors.backgroundColor,
            body: Container(
                child: SafeArea(
                    child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        height: getProportionateScreenHeight(56),
                        margin: EdgeInsets.only(
                            left: getProportionateScreenWidth(15)),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                yourProfileBloc
                                    .add(YourProfileBackClickEvent());
                              },
                              child: SvgPicture.asset(
                                Assets.imgArrowBack,
                                width: getProportionateScreenHeight(40),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                Strings.yourProfile,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: AppColors.clrBlack,
                                    fontSize: getProportionateScreenWidth(15),
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            )
                          ],
                        ),
                      ),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            heightSizeBox(10),
                            Stack(
                              children: [
                                SvgPicture.asset(
                                  Assets.imgRoundUser,
                                  width: getProportionateScreenWidth(130),
                                ),
                                Positioned(
                                  bottom: 5,
                                  right: 5,
                                  child: GestureDetector(
                                    onTap: () {
                                      yourProfileBloc.add(
                                          YourProfileSelectImageClickEvent());
                                    },
                                    child: SvgPicture.asset(
                                      Assets.imgEditIconSelectImage,
                                      width: getProportionateScreenWidth(30),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            heightSizeBox(20),
                            TextFieldwidget(
                              width: SizeConfig.screenWidth * 0.9,
                              title: Strings.name,
                              hintText: Strings.enterName,
                              controller: nameController,
                            ),
                            heightSizeBox(20),
                            PhoneTextField(
                              width: SizeConfig.screenWidth * 0.9,
                              title: Strings.phoneNumber,
                              mobileNoCont: phoneNumberController,
                              backgroundColor: AppColors.clrTextFieldColor,
                            ),
                            heightSizeBox(20),
                            TextFieldwidget(
                              width: SizeConfig.screenWidth * 0.9,
                              title: Strings.email,
                              hintText: Strings.enterEmail,
                              controller: emailController,
                            ),
                            heightSizeBox(20),
                            GenderWidget(
                              dropDownValue: "Male",
                            ),
                            heightSizeBox(30),
                          ]),
                    ],
                  ),
                ),
                Container(
                  height: getProportionateScreenWidth(80),
                  padding: EdgeInsets.only(
                      left: getProportionateScreenWidth(10),
                      right: getProportionateScreenWidth(10)),
                  decoration: BoxDecoration(
                      color: AppColors.clrWhite,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                            color: AppColors.clrBlack.withAlpha(29),
                            blurRadius: 1,
                            spreadRadius: 1),
                      ]),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        yourProfileBloc.add(YourProfileButtonClickEvent());
                      },
                      child: Container(
                          padding: EdgeInsets.only(
                              left: SizeConfig.screenWidth * 0.05,
                              right: SizeConfig.screenWidth * 0.05),
                          child: CommonButton(
                              onPressed: () {}, title: Strings.updateProfile)),
                    ),
                  ),
                )
              ],
            ))));
      },
    );
  }

  Widget heightSizeBox(double height) {
    return SizedBox(
      height: height,
    );
  }
}
