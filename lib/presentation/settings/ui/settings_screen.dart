import 'package:coffeeshopapp/core/configs/routes.dart';
import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/dashboard/profile/widgets/profile_item.dart';
import 'package:coffeeshopapp/presentation/settings/bloc/settings_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen({super.key});

  SettingsBloc settingsBloc = SettingsBloc();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SettingsBloc, SettingsState>(
      bloc: settingsBloc,
      listenWhen: (previous, current) => current is SettingActionState,
      buildWhen: (previous, current) => current is! SettingActionState,
      listener: (context, state) {
        if (state is SettingsBackClickState) {
          Navigator.pop(context);
        } else if (state is SettingsDeleteAccountClickState) {
          // Navigator.pushNamed(context, AppRouter.MANAGE_ADDRESS);
        } else if (state is SettingsPasswordManagerClickState) {
          Navigator.pushNamed(context, AppRouter.CHANGE_PASSWORD);
        } else if (state is SettingsNotificationSettingsClickState) {}
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
                    AppBar(settingsBloc),
                    SizedBox(
                      height: getProportionateScreenHeight(15),
                    ),
                    ProfileItems(
                        Strings.notificationSettings, Assets.imgNotificationSettings, () {
                      settingsBloc
                          .add(SettingsNotificationSettingsClickEvent());
                    }),
                    Container(
                      width: double.infinity,
                      height: 0.5,
                      color: AppColors.clrLightGrey,
                    ),
                    ProfileItems(
                        Strings.passwordManager, Assets.imgPasswordManager, () {
                      settingsBloc.add(SettingsPasswordManagerClickEvent());
                    }),
                    Container(
                      width: double.infinity,
                      height: 0.5,
                      color: AppColors.clrLightGrey,
                    ),
                    ProfileItems(Strings.deleteAccount, Assets.imgDeleteAccount,
                        () {
                      settingsBloc.add(SettingsDeleteAccountClickEvent());
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
  SettingsBloc settingsBloc;

  AppBar(
    this.settingsBloc, {
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
                settingsBloc.add(SettingsBackClickEvent());
              },
              child: SvgPicture.asset(
                Assets.imgArrowBack,
                width: getProportionateScreenHeight(40),
              ),
            ),
            Expanded(
                child: Text(
              Strings.settings,
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
