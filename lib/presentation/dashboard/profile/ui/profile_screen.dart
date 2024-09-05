import 'package:coffeeshopapp/core/configs/routes.dart';
import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/dashboard/profile/bloc/profile_bloc.dart';
import 'package:coffeeshopapp/presentation/dashboard/profile/widgets/logout_bottom_sheet.dart';
import 'package:coffeeshopapp/presentation/dashboard/profile/widgets/profile_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  ProfileBloc profileBloc = ProfileBloc();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(
      bloc: profileBloc,
      listenWhen: (previous, current) => current is ProfileActionState,
      buildWhen: (previous, current) => current is! ProfileActionState,
      listener: (context, state) {
        if (state is ProfileYourProfileClickState) {
          Navigator.pushNamed(context, AppRouter.YOUR_PROFILE);
        } else if (state is ProfileManageAddressClickState) {
          Navigator.pushNamed(context, AppRouter.MANAGE_ADDRESS);
        } else if (state is ProfileMyOrdersClickState) {
          Navigator.pushNamed(context, AppRouter.MY_ORDERS);
        } else if (state is ProfileMyCouponsClickState) {
          Navigator.pushNamed(context, AppRouter.COUPONS);
        } else if (state is ProfileMyWalletsClickState) {
          Navigator.pushNamed(context, AppRouter.WALLET);
        } else if (state is ProfileSettingsClickState) {
          Navigator.pushNamed(context, AppRouter.SETTINGS);
        } else if (state is ProfileLogoutClickState) {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            backgroundColor:
            Colors.transparent,
            isDismissible: false,
            enableDrag: true,
            builder: (context) =>
                BlocProvider.value(
                  // Use existing BLoC instance
                  value: profileBloc,
                  child: LogoutBottomSheet(), // BottomSheet widget to input address fields
                ),
          );
        } else if (state is ProfileBackClickState) {
          Navigator.pop(context);
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.backgroundColor,
          body: SafeArea(
            child: Container(
              margin: EdgeInsets.only(bottom: 80),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    AppBar(profileBloc),
                    Stack(
                      children: [
                        SvgPicture.asset(
                          Assets.imgRoundUser,
                          width: getProportionateScreenWidth(120),
                        ),
                        Positioned(
                          bottom: 5,
                          right: 5,
                          child: SvgPicture.asset(
                            Assets.imgEditIconSelectImage,
                            width: getProportionateScreenWidth(30),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(15),
                    ),
                    Text(
                      "Chetan Vaghela",
                      style: TextStyle(
                          color: AppColors.clrBlack,
                          fontSize: getProportionateScreenWidth(17),
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(15),
                    ),
                    ProfileItems(Strings.yourProfile, Assets.imgMenuUser, () {
                      profileBloc.add(ProfileYourProfileClickEvent());
                    }),
                    Container(
                      width: double.infinity,
                      height: 0.5,
                      color: AppColors.clrLightGrey,
                    ),
                    ProfileItems(Strings.manageAddress, Assets.imgMapPointGreen,
                        () {
                      profileBloc.add(ProfileManageAddressClickEvent());
                    }),
                    Container(
                      width: double.infinity,
                      height: 0.5,
                      color: AppColors.clrLightGrey,
                    ),
                    ProfileItems(Strings.myOrders, Assets.imgMenuOrders, () {
                      profileBloc.add(ProfileMyOrdersClickEvent());
                    }),
                    Container(
                      width: double.infinity,
                      height: 0.5,
                      color: AppColors.clrLightGrey,
                    ),
                    ProfileItems(Strings.myCoupons, Assets.imgMyCoupons, () {
                      profileBloc.add(ProfileMyCouponsClickEvent());
                    }),
                    Container(
                      width: double.infinity,
                      height: 0.5,
                      color: AppColors.clrLightGrey,
                    ),
                    ProfileItems(Strings.myWallet, Assets.imgMyWallet, () {
                      profileBloc.add(ProfileMyWalletsClickEvent());
                    }),
                    Container(
                      width: double.infinity,
                      height: 0.5,
                      color: AppColors.clrLightGrey,
                    ),
                    ProfileItems(Strings.settings, Assets.imgMenuSettings, () {
                      profileBloc.add(ProfileSettingsClickEvent());
                    }),
                    Container(
                      width: double.infinity,
                      height: 0.5,
                      color: AppColors.clrLightGrey,
                    ),
                    ProfileItems(Strings.logout, Assets.imgMenuLogout, () {
                      profileBloc.add(ProfileLogoutClickEvent());
                    }),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class AppBar extends StatelessWidget {
  ProfileBloc profileBloc;

  AppBar(
    this.profileBloc, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(56),
      margin: EdgeInsets.only(
          left: getProportionateScreenWidth(15),
          right: getProportionateScreenWidth(15)),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                profileBloc.add(ProfileBackClickEvent());
              },
              child: SvgPicture.asset(
                Assets.imgArrowBack,
                width: getProportionateScreenHeight(40),
              ),
            ),
            Expanded(
                child: Text(
              Strings.profile,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: AppColors.clrBlack,
                  fontSize: getProportionateScreenWidth(17),
                  fontWeight: FontWeight.w600),
            )),
            SizedBox(
              width: getProportionateScreenWidth(40),
            ),
          ]),
    );
  }
}
