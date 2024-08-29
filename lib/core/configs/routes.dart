import 'package:coffeeshopapp/presentation/address_map/enter_your_location/ui/enter_your_location_screen.dart';
import 'package:coffeeshopapp/presentation/auth/pages/login/ui/login.dart';
import 'package:coffeeshopapp/presentation/auth/pages/otp/ui/otp.dart';
import 'package:coffeeshopapp/presentation/auth/pages/signup/ui/signup.dart';
import 'package:coffeeshopapp/presentation/cart/ui/cart_screen.dart';
import 'package:coffeeshopapp/presentation/dashboard/dashboard_view.dart';
import 'package:coffeeshopapp/presentation/dashboard/home/models/product_data_model.dart';
import 'package:coffeeshopapp/presentation/dashboard/home/ui/home_screen.dart';
import 'package:coffeeshopapp/presentation/intro/ui/get_started.dart';
import 'package:coffeeshopapp/presentation/item_details/ui/item_details.dart';
import 'package:coffeeshopapp/presentation/splash/ui/splash.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static const String SPLASH = '/splash';
  static const String GET_STARTED = '/get_started';
  static const String LOGIN = '/login';
  static const String REGISTER = '/register';
  static const String OTP = '/otp';
  static const String DASHBOARD = '/dashboard';
  static const String ITEM_DETAILS = '/item_details';
  static const String CART = '/cart';
  static const String ENTER_LOCATION = '/enter_location';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SPLASH:
        return MaterialPageRoute(
          builder: (_) => SplashPage(),
        );
      case GET_STARTED:
        return MaterialPageRoute(
          builder: (_) => GetStartedScreen(),
        );
      case LOGIN:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
        );
      case REGISTER:
        // var initialUser = settings.arguments as UserModel;
        return MaterialPageRoute(
          builder: (_) => SignupScreen(),
        );
      case OTP:
        // var initialUser = settings.arguments as UserModel;
        return MaterialPageRoute(
          builder: (_) => OtpScreen(),
        );
      case ENTER_LOCATION:
        // var initialUser = settings.arguments as UserModel;
        return MaterialPageRoute(
          builder: (_) => EnterYourLocationScreen(),
        );
      case CART:
        // var initialUser = settings.arguments as UserModel;
        return MaterialPageRoute(
          builder: (_) => CartScreen(),
        );
      case DASHBOARD:
        // var initialUser = settings.arguments as UserModel;
        return MaterialPageRoute(
          builder: (_) => DashboardView(),
        );

      case ITEM_DETAILS:
        var product = settings.arguments as ProductDataModel;
        return MaterialPageRoute(
          builder: (_) => ItemDetailsScreen(
            product: product,
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }

  ///Singleton factory
  static final AppRouter _instance = AppRouter._internal();

  factory AppRouter() {
    return _instance;
  }

  AppRouter._internal();
}
