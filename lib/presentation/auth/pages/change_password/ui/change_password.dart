import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/auth/pages/change_password/bloc/change_password_bloc.dart';
import 'package:coffeeshopapp/presentation/auth/pages/reset_password/ui/reset_password.dart';
import 'package:coffeeshopapp/presentation/auth/widgets/textFieldWidget.dart';
import 'package:coffeeshopapp/presentation/splash/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  TextEditingController oldController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  ChangePasswordBloc changePasswordBloc = ChangePasswordBloc();

  bool isPasswordVisible = false;
  bool isOldPasswordVisible = false;
  bool isCPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChangePasswordBloc, ChangePasswordState>(
      bloc: changePasswordBloc,
      listenWhen: (p, c) => c is ChangePasswordActionState,
      buildWhen: (p, c) => c is! ChangePasswordActionState,
      listener: (context, state) {
        if (state is ChangePasswordSubmitClickState) {
          //Api call here
          Navigator.pop(context);
        } else if (state is ChangePasswordBackClickState) {
          Navigator.pop(context);
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.backgroundColor,
          body: Container(
            child: SafeArea(
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          Strings.passwordManager,
                          style: TextStyle(
                              color: AppColors.clrBlack, fontSize: 30),
                        ),
                      ),
                      heightSizeBox(30),
                      TextFieldwidget(
                        width: SizeConfig.screenWidth * 0.9,
                        title: Strings.currentPassword,
                        hintText: Strings.enterPassword,
                        controller: oldController,
                        obsecure: true,
                        suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                isOldPasswordVisible = !isOldPasswordVisible;
                              });
                            },
                            child: Icon(
                                isOldPasswordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: AppColors.clrBlack)),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            right: getProportionateScreenWidth(15),
                            top: getProportionateScreenHeight(15)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            ResetPasswordScreen()));
                              },
                              child: Text(
                                Strings.forgotPassword,
                                style: TextStyle(
                                    color: AppColors.primary,
                                    fontSize: getProportionateScreenWidth(14),
                                    fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.underline,
                                    decorationColor: AppColors.primary),
                              ),
                            )
                          ],
                        ),
                      ),
                      heightSizeBox(30),
                      TextFieldwidget(
                        width: SizeConfig.screenWidth * 0.9,
                        title: Strings.newPassword,
                        hintText: Strings.enterPassword,
                        controller: passwordController,
                        obsecure: true,
                        suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                isPasswordVisible = !isPasswordVisible;
                              });
                            },
                            child: Icon(
                                isPasswordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: AppColors.clrBlack)),
                      ),
                      heightSizeBox(30),
                      TextFieldwidget(
                        width: SizeConfig.screenWidth * 0.9,
                        title: Strings.confirmNewPassword,
                        hintText: Strings.enterPassword,
                        controller: confirmPasswordController,
                        obsecure: true,
                        suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                isCPasswordVisible = !isCPasswordVisible;
                              });
                            },
                            child: Icon(
                                isCPasswordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: AppColors.clrBlack)),
                      ),
                      heightSizeBox(30),
                      Container(
                          padding: EdgeInsets.only(
                              left: SizeConfig.screenWidth * 0.05,
                              right: SizeConfig.screenWidth * 0.05),
                          child: CommonButton(
                              onPressed: () {
                                changePasswordBloc
                                    .add(ChangePasswordSubmitClickEvent());
                              },
                              title: Strings.changePassword)),
                      heightSizeBox(60),
                    ],
                  ),
                  Positioned(
                      top: 20,
                      left: 20,
                      child: GestureDetector(
                        onTap: () {
                          changePasswordBloc
                              .add(ChangePasswordBackClickEvent());
                        },
                        child: SvgPicture.asset(
                          Assets.imgArrowBack,
                          width: getProportionateScreenHeight(40),
                        ),
                      ))
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget heightSizeBox(double height) {
    return SizedBox(
      height: height,
    );
  }
}
