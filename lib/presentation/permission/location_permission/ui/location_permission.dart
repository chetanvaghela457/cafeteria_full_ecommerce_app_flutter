import 'package:coffeeshopapp/core/configs/routes.dart';
import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/permission/location_permission/bloc/location_permission_bloc.dart';
import 'package:coffeeshopapp/presentation/splash/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geolocator/geolocator.dart';

class LocationPermission extends StatelessWidget {
  LocationPermission({super.key});

  LocationPermissionBloc locationPermissionBloc = LocationPermissionBloc();

  @override
  Widget build(BuildContext context) {

    locationPermissionBloc.add(LocationPermissionCheckStatusEvent());

    return BlocConsumer<LocationPermissionBloc, LocationPermissionState>(
      bloc: locationPermissionBloc,
      listenWhen: (p, c) => c is LocationPermissionActionState,
      buildWhen: (p, c) => c is! LocationPermissionActionState,
      listener: (context, state) {
        if (state is LocationPermissionEnterManuallyClickState ||
            state is LocationPermissionAllowClickState ||
            state is LocationPermissionGrantedState) {
          Navigator.pushNamed(context, AppRouter.NOTIFICATION_PERMISSION);
        }
      },
      builder: (context, state) {
        if (state is LocationPermissionGrantedState) {
          // Skip the permission screen if already granted
          WidgetsBinding.instance.addPostFrameCallback((_) {
            Navigator.pushReplacementNamed(
                context, AppRouter.NOTIFICATION_PERMISSION);
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
                        Assets.imgMapPointGreen,
                        width: getProportionateScreenWidth(50),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(15),
                  ),
                  Text(
                    Strings.locationPermissionText,
                    style: TextStyle(
                        color: AppColors.clrBlack,
                        fontWeight: FontWeight.w600,
                        fontSize: getProportionateScreenWidth(22)),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(15),
                  ),
                  Text(
                    Strings.findNearbyCafe,
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
                            locationPermissionBloc
                                .add(LocationPermissionAllowClickEvent());
                          },
                          title: Strings.allowLocation)),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  GestureDetector(
                    onTap: () {
                      locationPermissionBloc
                          .add(LocationPermissionEnterManuallyClickEvent());
                    },
                    child: Text(
                      Strings.enterManually,
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
