import 'package:coffeeshopapp/core/configs/routes.dart';
import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/permission/notification_permission/bloc/notification_permission_bloc.dart';
import 'package:coffeeshopapp/presentation/splash/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationPermission extends StatelessWidget {
  NotificationPermission({super.key});

  NotificationPermissionBloc notificationPermissionBloc =
      NotificationPermissionBloc();

  @override
  Widget build(BuildContext context) {

    // Trigger permission check when the screen is built
    notificationPermissionBloc.add(NotificationPermissionCheckEvent());

    return BlocConsumer<NotificationPermissionBloc,
        NotificationPermissionState>(
      bloc: notificationPermissionBloc,
      listenWhen: (p, c) => c is NotificationPermissionActionState,
      buildWhen: (p, c) => c is! NotificationPermissionActionState,
      listener: (context, state) {
        if (state is NotificationPermissionGrantedState || state is NotificationPermissionNotRequiredState) {
          // Skip this screen and go to the next screen
          Navigator.pushReplacementNamed(context, AppRouter.ENTER_LOCATION);
        } else if (state is NotificationPermissionMayBeLaterClickState) {
          Navigator.pushNamed(context, AppRouter.ENTER_LOCATION);
        }
      },
      builder: (context, state) {
        if (state is NotificationPermissionGrantedState || state is NotificationPermissionNotRequiredState) {
          // Skip screen
          WidgetsBinding.instance.addPostFrameCallback((_) {
            Navigator.pushReplacementNamed(
                context, AppRouter.ENTER_LOCATION);
          });
          return Container(); // Return empty container while redirecting
        }
        return Scaffold(
          backgroundColor: AppColors.backgroundColor,
          body: SafeArea(
            child: Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: getProportionateScreenWidth(100),
                    height: getProportionateScreenWidth(100),
                    decoration: BoxDecoration(
                        color: AppColors.clrLightGrey,
                        borderRadius: BorderRadius.circular(
                            getProportionateScreenWidth(50))),
                    child: Center(
                      child: SvgPicture.asset(
                        Assets.imgNotificationBellGreen,
                        width: getProportionateScreenWidth(50),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(15),
                  ),
                  Text(
                    Strings.notificationPermissionText,
                    style: TextStyle(
                        color: AppColors.clrBlack,
                        fontWeight: FontWeight.w600,
                        fontSize: getProportionateScreenWidth(22)),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(15),
                  ),
                  Text(
                    Strings.notificationPermissionText1,
                    style: TextStyle(
                        color: AppColors.clrGrey,
                        fontWeight: FontWeight.w400,
                        fontSize: getProportionateScreenWidth(13)),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  Container(
                      padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 0.05,
                          right: SizeConfig.screenWidth * 0.05),
                      child: CommonButton(
                          onPressed: () {
                            notificationPermissionBloc.add(NotificationPermissionRequestEvent());
                          },
                          title: Strings.allowNotification)),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  GestureDetector(
                    onTap: () {
                      notificationPermissionBloc
                          .add(NotificationPermissionMayBeLaterClickEvent());
                    },
                    child: Text(
                      Strings.mayBeLater,
                      style: TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.w500,
                          fontSize: getProportionateScreenWidth(15)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
