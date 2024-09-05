import 'package:coffeeshopapp/core/configs/routes.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/auth/pages/login/bloc/login_bloc.dart';
import 'package:coffeeshopapp/presentation/auth/pages/otp/ui/otp.dart';
import 'package:coffeeshopapp/presentation/auth/pages/signup/ui/signup.dart';
import 'package:coffeeshopapp/presentation/auth/widgets/SocialWidget.dart';
import 'package:coffeeshopapp/presentation/auth/widgets/or_widget.dart';
import 'package:coffeeshopapp/presentation/auth/widgets/social_row.dart';
import 'package:coffeeshopapp/presentation/auth/widgets/textFieldWidget.dart';
import 'package:coffeeshopapp/presentation/dashboard/home/bloc/home_bloc.dart';
import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/presentation/splash/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LoginBloc loginBloc = LoginBloc();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool isPasswordVisible = false;

    return BlocConsumer<LoginBloc, LoginState>(
      bloc: loginBloc,
      listenWhen: (previous, current) => current is LoginActionState,
      buildWhen: (previous, current) => current is! LoginActionState,
      listener: (context, state) {
        if (state is LoginNavigateToOtpActionState) {
          Navigator.pushNamed(
            context,
            AppRouter.OTP,
          );
        } else if (state is LoginNavigateToSignUpActionState) {
          Navigator.pushNamed(
            context,
            AppRouter.REGISTER,
          );
        } else if (state is LoginNavigateToForgotPasswordActionState) {
          Navigator.pushNamed(
            context,
            AppRouter.RESET_PASSWORD,
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: AppColors.backgroundColor,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: getProportionateScreenHeight(50),
                    ),
                    Center(
                      child: Text(
                        Strings.signIn,
                        style:
                            TextStyle(color: AppColors.clrBlack, fontSize: 30),
                      ),
                    ),
                    heightSizeBox(10),
                    Text(Strings.signInTitle,
                        style:
                            TextStyle(color: AppColors.clrBlack, fontSize: 14)),
                    heightSizeBox(30),
                    TextFieldwidget(
                      width: SizeConfig.screenWidth * 0.9,
                      title: Strings.email,
                      hintText: Strings.enterEmail,
                      controller: emailController,
                      errorText: state is LoginInvalid &&
                              state.message.contains("email")
                          ? state.message
                          : null,
                      onChanged: (value) {
                        loginBloc.add(EmailChanged(value));
                      },
                    ),
                    heightSizeBox(20),
                    TextFieldwidget(
                      width: SizeConfig.screenWidth * 0.9,
                      title: Strings.password,
                      hintText: Strings.enterPassword,
                      controller: passwordController,
                      obsecure: true,
                      errorText: state is LoginInvalid &&
                              state.message.contains("Password")
                          ? state.message
                          : null,
                      onChanged: (value) {
                        loginBloc.add(PasswordChanged(value));
                      },
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
                    heightSizeBox(10),
                    ForgotPassword(SizeConfig.screenWidth),
                    heightSizeBox(20),
                    Container(
                        padding: EdgeInsets.only(
                            left: SizeConfig.screenWidth * 0.05,
                            right: SizeConfig.screenWidth * 0.05),
                        child: CommonButton(
                            onPressed: () {
                              final email = emailController.text;
                              final password = passwordController.text;
                              loginBloc.add(LoginSubmitted(email, password));
                            },
                            title: Strings.signIn)),
                     heightSizeBox(20),
                    OrWidget(
                      title: Strings.orSignInWith,
                    ),
                    heightSizeBox(30),
                    SocialRow(screenWidth: SizeConfig.screenWidth),
                    heightSizeBox(30),
                    GestureDetector(
                      onTap: () {
                        loginBloc.add(LoginSignupPageNavigateEvent());
                      },
                      child: RichText(
                          text: TextSpan(
                              text: Strings.dontHaveAccount,
                              style: TextStyle(
                                color: AppColors.clrBlack,
                                fontSize: getProportionateScreenWidth(14),
                              ),
                              children: [
                            TextSpan(
                              text: Strings.signUp,
                              style: TextStyle(
                                color: AppColors.primary,
                                fontSize: getProportionateScreenWidth(14),
                              ),
                            )
                          ])),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget ForgotPassword(double screenWidth) {
    return GestureDetector(
      onTap: () {
        loginBloc.add(LoginForgotPasswordNavigateEvent());
      },
      child: Padding(
        padding: EdgeInsets.only(right: screenWidth * 0.05),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              Strings.forgotPassword,
              style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.primary),
              textAlign: TextAlign.end,
            ),
          ],
        ),
      ),
    );
  }

  Widget heightSizeBox(double height) {
    return SizedBox(
      height: height,
    );
  }
}
