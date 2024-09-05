import 'package:coffeeshopapp/core/configs/routes.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/auth/pages/login/ui/login.dart';
import 'package:coffeeshopapp/presentation/auth/pages/otp/ui/otp.dart';
import 'package:coffeeshopapp/presentation/auth/pages/signup/bloc/signup_bloc.dart';
import 'package:coffeeshopapp/presentation/auth/widgets/or_widget.dart';
import 'package:coffeeshopapp/presentation/auth/widgets/social_row.dart';
import 'package:coffeeshopapp/presentation/auth/widgets/textFieldWidget.dart';
import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/presentation/splash/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final SignupBloc signupBloc = SignupBloc();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isPasswordVisible = false;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupBloc, SignupState>(
      bloc: signupBloc,
      listenWhen: (previous, current) => current is SignupActionState,
      buildWhen: (previous, current) => current is! SignupActionState,
      listener: (context, state) {
        if (state is SignupNavigateToLoginActionState) {
          Navigator.pushNamed(
            context,
            AppRouter.LOGIN,
          );
        } else if (state is SignupNavigateToOtpActionState) {
          Navigator.pushNamed(
            context,
            AppRouter.OTP,
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
                      height: getProportionateScreenHeight(40),
                    ),
                    Center(
                      child: Text(
                        Strings.createAccount,
                        style:
                            TextStyle(color: AppColors.clrBlack, fontSize: 30),
                      ),
                    ),
                    heightSizeBox(10),
                    Text(
                      Strings.signupTitle,
                      style: TextStyle(color: AppColors.clrBlack, fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                    heightSizeBox(15),
                    TextFieldwidget(
                      width: SizeConfig.screenWidth * 0.9,
                      title: Strings.name,
                      hintText: Strings.enterName,
                      controller: nameController,
                      errorText: state is SignupInvalid &&
                              state.message.contains("username")
                          ? state.message
                          : null,
                      onChanged: (value) {
                        signupBloc.add(UsernameChanged(value));
                      },
                    ),
                    heightSizeBox(15),
                    TextFieldwidget(
                      width: SizeConfig.screenWidth * 0.9,
                      title: Strings.email,
                      hintText: Strings.enterEmail,
                      controller: emailController,
                      errorText: state is SignupInvalid &&
                              state.message.contains("email")
                          ? state.message
                          : null,
                      onChanged: (value) {
                        signupBloc.add(EmailChanged(value));
                      },
                    ),
                    heightSizeBox(15),
                    TextFieldwidget(
                      width: SizeConfig.screenWidth * 0.9,
                      title: Strings.password,
                      hintText: Strings.enterPassword,
                      controller: passwordController,
                      obsecure: true,
                      errorText: state is SignupInvalid &&
                              state.message.contains("Password")
                          ? state.message
                          : null,
                      onChanged: (value) {
                        signupBloc.add(PasswordChanged(value));
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
                    Container(
                      width: SizeConfig.screenWidth * 0.9,
                      child: CheckboxListTile(
                        title: RichText(
                          text: TextSpan(
                              text: Strings.agreeWith,
                              style: TextStyle(
                                  fontSize: getProportionateScreenWidth(12),
                                  color: AppColors.clrBlack),
                              children: [
                                TextSpan(
                                  text: Strings.termsCondition,
                                  style: TextStyle(
                                      fontSize: getProportionateScreenWidth(12),
                                      color: AppColors.primary,
                                      decoration: TextDecoration.underline),
                                )
                              ]),
                        ),
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(
                            left: SizeConfig.screenWidth * 0.05,
                            right: SizeConfig.screenWidth * 0.05),
                        child: CommonButton(
                            onPressed: () {
                              final name = nameController.text;
                              final email = emailController.text;
                              final password = passwordController.text;
                              signupBloc
                                  .add(SignUpSubmitted(name, email, password));
                              // signupBloc.add(SignupOtpPageNavigateEvent());
                            },
                            title: Strings.signUp)),
                    heightSizeBox(20),
                    OrWidget(
                      title: Strings.orSignupWith,
                    ),
                    heightSizeBox(30),
                    SocialRow(screenWidth: SizeConfig.screenWidth),
                    heightSizeBox(30),
                    GestureDetector(
                      onTap: () {
                        signupBloc.add(SignupLoginPageNavigateEvent());
                      },
                      child: RichText(
                          text: TextSpan(
                              text: Strings.alreadyHaveAccount,
                              style: TextStyle(
                                color: AppColors.clrBlack,
                                fontSize: getProportionateScreenWidth(14),
                              ),
                              children: [
                            TextSpan(
                              text: Strings.signIn,
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

  Widget heightSizeBox(double height) {
    return SizedBox(
      height: height,
    );
  }
}
