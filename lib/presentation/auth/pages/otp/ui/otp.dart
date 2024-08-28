import 'package:coffeeshopapp/core/configs/routes.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/auth/pages/otp/bloc/otp_bloc.dart';
import 'package:coffeeshopapp/presentation/auth/pages/signup/ui/signup.dart';
import 'package:coffeeshopapp/presentation/dashboard/dashboard_view.dart';
import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/presentation/splash/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  String otpErr = "";
  String otpText = "";

  final OtpBloc otpBloc = OtpBloc();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // SizeConfig.init(context);

    return BlocConsumer<OtpBloc, OtpState>(
      bloc: otpBloc,
      listenWhen: (previous, current) => current is OtpActionState,
      buildWhen: (previous, current) => current is! OtpActionState,
      listener: (context, state) {
        if (state is OtpVerifyNavigateActionState) {
          Navigator.pushNamed(
            context,
            AppRouter.DASHBOARD,
          );
        } else if (state is OtpResendNavigateActionState) {
          Navigator.pushNamed(
            context,
            AppRouter.OTP,
          );
        } else if (state is OtpBackNavigateEvent) {
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
                          Strings.verifyCode,
                          style: TextStyle(
                              color: AppColors.clrBlack, fontSize: 30),
                        ),
                      ),
                      heightSizeBox(10),
                      Text(Strings.otpTitle,
                          style: TextStyle(
                              color: AppColors.clrBlack, fontSize: 14)),
                      Text(Strings.enterEmail,
                          style: TextStyle(
                              color: AppColors.primary,
                              fontSize: 14,
                              fontWeight: FontWeight.w600)),
                      heightSizeBox(30),
                      Center(
                        child: OtpTextField(
                          numberOfFields: 4,
                          fieldWidth: 60,
                          filled: true,
                          fillColor: AppColors.clrTextFieldColor,
                          cursorColor: AppColors.clrBlack,
                          margin: EdgeInsets.only(right: 15),
                          borderColor: Colors.black,
                          //set to true to show as box or false to show as dash
                          showFieldAsBox: true,
                          mainAxisAlignment: MainAxisAlignment.center,
                          alignment: Alignment.center,
                          textStyle: TextStyle(color: AppColors.clrBlack),
                          //runs when a code is typed in
                          onCodeChanged: (String code) {
                            setState(() {
                              if (code.isEmpty) {
                                otpErr = "Please Enter a OTP";
                              } else {
                                otpErr = "";
                              }
                            });
                          },
                          //runs when every textfield is filled
                          onSubmit: (String verificationCode) {
                            setState(() {
                              otpText = verificationCode;
                            });
                          }, // end onSubmit
                        ),
                      ),
                      heightSizeBox(40),
                      Text(Strings.dontReceiveOtp,
                          style: TextStyle(
                              color: AppColors.clrGrey, fontSize: 13)),
                      GestureDetector(
                        onTap: () {
                          otpBloc.add(OtpResendNavigateEvent());
                        },
                        child: Text(Strings.resendCode,
                            style: TextStyle(
                                color: AppColors.clrBlack,
                                decoration: TextDecoration.underline,
                                fontSize: 14,
                                fontWeight: FontWeight.w600)),
                      ),
                      heightSizeBox(40),
                      Container(
                          padding: EdgeInsets.only(
                              left: screenWidth * 0.05,
                              right: screenWidth * 0.05),
                          child: CommonButton(
                              onPressed: () {
                                otpBloc.add(OtpVerifyNavigateEvent());
                              },
                              title: Strings.verify)),
                      heightSizeBox(150),
                    ],
                  ),
                  Positioned(
                      top: 20,
                      left: 20,
                      child: GestureDetector(
                        onTap: () {
                          otpBloc.add(OtpBackNavigateEvent());
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
