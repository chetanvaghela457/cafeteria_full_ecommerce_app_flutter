import 'package:coffeeshopapp/core/configs/routes.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/app_theme.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/auth/pages/login/ui/login.dart';
import 'package:coffeeshopapp/presentation/intro/bloc/get_started_bloc.dart';
import 'package:coffeeshopapp/presentation/intro/widgets/curved_container.dart';
import 'package:coffeeshopapp/presentation/splash/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  final GetStartedBloc getStartedBloc = GetStartedBloc();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetStartedBloc, GetStartedState>(
      bloc: getStartedBloc,
      listenWhen: (previous, current) => current is GetStartedActionState,
      buildWhen: (previous, current) => current is! GetStartedActionState,
      listener: (context, state) {
        if (state is GetStartedNavigateIntroActionState) {
          Navigator.pushNamed(
            context,
            AppRouter.LOGIN,
          );
        } else if (state is GetStartedNavigateLoginActionState) {
          Navigator.pushNamed(
            context,
            AppRouter.LOGIN,
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.backgroundColor,
          body: Container(
            child: Column(
              children: [
                Stack(
                  children: [
                    ClipPath(
                      clipper: CurvedContainer(),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.6,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage(
                            Assets.imgBackgroundGetStarted,
                          ),
                          fit: BoxFit.fill,
                        )),
                      ),
                    ),
                    ClipPath(
                      clipper: CurvedContainer(),
                      child: Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.6,
                        alignment: Alignment.bottomCenter,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage(
                            Assets.imgGetStartedGirl,
                          ),
                          fit: BoxFit.fill,
                        )),
                      ),
                    ),
                  ],
                ),
                BottomWidget(
                  getStartedBloc: getStartedBloc,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

class BottomWidget extends StatelessWidget {
  GetStartedBloc? getStartedBloc = GetStartedBloc();

  BottomWidget({
    this.getStartedBloc,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: Strings.getStartedText1,
                  style: TextStyle(
                      color: AppColors.clrBlack,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: Strings.getStartedText2,
                      style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: Strings.getStartedText3,
                      style: TextStyle(
                          color: AppColors.clrBlack,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ])),
          SizedBox(
            height: 20,
          ),
          Text(
            Strings.getStartedDesc,
            style: TextStyle(
              color: AppColors.clrGrey,
              fontSize: 11,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          CommonButton(
              onPressed: () {
                getStartedBloc!.add(GetStartedIntroPageNavigationEvent());
              },
              title: Strings.letsGetStarted),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              getStartedBloc!.add(GetStartedLoginPageNavigationEvent());
            },
            child: RichText(
                text: TextSpan(
                    text: Strings.alreadyHaveAccount,
                    style: TextStyle(
                      color: AppColors.clrBlack,
                      fontSize: 15,
                    ),
                    children: [
                  TextSpan(
                    text: Strings.signIn,
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 15,
                    ),
                  )
                ])),
          )
        ],
      ),
    );
  }
}
