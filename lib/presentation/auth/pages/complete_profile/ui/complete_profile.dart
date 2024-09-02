import 'package:coffeeshopapp/core/configs/routes.dart';
import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/auth/pages/complete_profile/bloc/complete_profile_bloc.dart';
import 'package:coffeeshopapp/presentation/auth/pages/reset_password/ui/reset_password.dart';
import 'package:coffeeshopapp/presentation/auth/widgets/gender_widget.dart';
import 'package:coffeeshopapp/presentation/auth/widgets/phone_coutry_field.dart';
import 'package:coffeeshopapp/presentation/auth/widgets/textFieldWidget.dart';
import 'package:coffeeshopapp/presentation/splash/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  CompleteProfileBloc completeProfileBloc = CompleteProfileBloc();

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneNumberController = TextEditingController();
    TextEditingController nameController = TextEditingController();

    return BlocConsumer<CompleteProfileBloc, CompleteProfileState>(
      bloc: completeProfileBloc,
      listenWhen: (previous, current) => current is CompleteProfileActionState,
      buildWhen: (previous, current) => current is! CompleteProfileActionState,
      listener: (context, state) {
        if (state is CompleteProfileBackClickState) {
          Navigator.pop(context);
        } else if (state is CompleteProfileButtonClickState) {
          // Navigator.pushNamed(context, AppRouter.ENTER_LOCATION);
          Navigator.pushNamed(context, AppRouter.LOCATION_PERMISSION);
        } else if (state is CompleteProfileSelectImageClickEvent) {}
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
                  child: Stack(
                    children: [
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: Text(
                                Strings.completeYourProfile,
                                style: TextStyle(
                                    color: AppColors.clrBlack, fontSize: 30),
                              ),
                            ),
                            heightSizeBox(10),
                            Text(
                              Strings.completeProfileText,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: AppColors.clrGrey, fontSize: 14),
                            ),
                            heightSizeBox(10),
                            Stack(
                              children: [
                                SvgPicture.asset(
                                  Assets.imgRoundUser,
                                  width: getProportionateScreenWidth(100),
                                ),
                                Positioned(
                                  bottom: 5,
                                  right: 5,
                                  child: GestureDetector(
                                    onTap: () {
                                      completeProfileBloc.add(
                                          CompleteProfileSelectImageClickEvent());
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
                            GenderWidget(
                              dropDownValue: "Male",
                            ),
                          ]),
                      Positioned(
                          top: 20,
                          left: 20,
                          child: GestureDetector(
                            onTap: () {
                              completeProfileBloc
                                  .add(CompleteProfileBackClickEvent());
                            },
                            child: SvgPicture.asset(
                              Assets.imgArrowBack,
                              width: getProportionateScreenHeight(40),
                            ),
                          ))
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
                    child: Container(
                        padding: EdgeInsets.only(
                            left: SizeConfig.screenWidth * 0.05,
                            right: SizeConfig.screenWidth * 0.05),
                        child: CommonButton(
                            onPressed: () {
                              completeProfileBloc
                                  .add(CompleteProfileButtonClickEvent());
                            },
                            title: Strings.completeProfile)),
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
