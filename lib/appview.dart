import 'package:coffeeshopapp/common/common_bloc.dart';
import 'package:coffeeshopapp/common/common_bloc/application_bloc.dart';
import 'package:coffeeshopapp/common/common_bloc/application_event.dart';
import 'package:coffeeshopapp/core/application.dart';
import 'package:coffeeshopapp/core/configs/routes.dart';
import 'package:coffeeshopapp/core/configs/theme/app_theme.dart';
import 'package:coffeeshopapp/presentation/auth/pages/login/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'common/common_bloc/bloc.dart';

class AppView extends StatefulWidget {
  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState? get _navigator => _navigatorKey.currentState;

  @override
  void initState() {
    CommonBloc.applicationBloc.add(SetupApplication());
    super.initState();
  }

  @override
  void dispose() {
    CommonBloc.dispose();
    super.dispose();
  }

  void onNavigate(String route) {
    _navigator!.pushNamedAndRemoveUntil(route, (route) => false);
  }

  // void loadData() {
  //   // Only load data when authenticated
  //   BlocProvider.of<ProfileBloc>(context).add(LoadProfile());
  //   BlocProvider.of<CartBloc>(context).add(LoadCart());
  // }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApplicationBloc, ApplicationState>(
      builder: (context, applicationState) {
        return MaterialApp(
          navigatorKey: _navigatorKey,
          debugShowCheckedModeBanner: Application.debug,
          title: Application.title,
          theme: AppTheme.appTheme,
          onGenerateRoute: AppRouter.generateRoute,
          initialRoute: AppRouter.CART,
          builder: (context, child) {
            return BlocListener<ApplicationBloc, ApplicationState>(
              listener: (context, authState) {
                if (applicationState is ApplicationCompleted) {
                  // if (authState is Uninitialized) {
                  onNavigate(AppRouter.CART);
                  // }
                } else {
                  onNavigate(AppRouter.CART);
                }
              },
              child: child,
            );
          },
        );
      },
    );
  }
}
