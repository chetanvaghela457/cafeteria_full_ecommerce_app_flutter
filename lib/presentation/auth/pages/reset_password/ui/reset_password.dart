import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/auth/pages/change_password/ui/change_password.dart';
import 'package:coffeeshopapp/presentation/auth/pages/reset_password/bloc/reset_password_bloc.dart';
import 'package:coffeeshopapp/presentation/auth/widgets/textFieldWidget.dart';
import 'package:coffeeshopapp/presentation/splash/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {

  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  bool isPasswordVisible = false;
  bool isCPasswordVisible = false;

  ResetPasswordBloc resetPasswordBloc = ResetPasswordBloc();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ResetPasswordBloc, ResetPasswordState>(
      bloc: resetPasswordBloc,
      listenWhen: (p,c) => c is ResetPasswordActionState,
      buildWhen: (p,c) => c is !ResetPasswordActionState,
      listener: (context, state) {
        if(state is ResetPasswordBackClickState) {

        }else if(state is ResetPasswordBackClickState) {

        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.backgroundColor,
          body: SafeArea(
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        Strings.newPassword,
                        style: TextStyle(
                            color: AppColors.clrBlack, fontSize: 30),
                      ),
                    ),
                    heightSizeBox(10),
                    Text(
                      Strings.newPasswordText,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: AppColors.clrGrey, fontSize: 14),
                    ),
                    heightSizeBox(30),
                    TextFieldwidget(
                      width: SizeConfig.screenWidth * 0.9,
                      title: Strings.password,
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
                    heightSizeBox(20),
                    TextFieldwidget(
                      width: SizeConfig.screenWidth * 0.9,
                      title: Strings.confirmPassword,
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
                    heightSizeBox(50),
                    Container(
                        padding: EdgeInsets.only(
                            left: SizeConfig.screenWidth * 0.05,
                            right: SizeConfig.screenWidth * 0.05),
                        child: CommonButton(onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      ChangePasswordScreen()));
                        }, title: Strings.createNewPassword)),
                    heightSizeBox(150),
                  ],
                ),
                Positioned(
                    top: 20,
                    left: 20,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset(
                        Assets.imgArrowBack,
                        width: getProportionateScreenHeight(40),
                      ),
                    ))
              ],
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
