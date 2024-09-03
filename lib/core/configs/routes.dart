import 'package:coffeeshopapp/presentation/address_map/delivery_address_list/ui/delivery_address_list_screen.dart';
import 'package:coffeeshopapp/presentation/address_map/enter_your_location/ui/enter_your_location_screen.dart';
import 'package:coffeeshopapp/presentation/address_map/get_direction/ui/get_direction_screen.dart';
import 'package:coffeeshopapp/presentation/address_map/manage_address/ui/manage_address_screen.dart';
import 'package:coffeeshopapp/presentation/auth/pages/change_password/ui/change_password.dart';
import 'package:coffeeshopapp/presentation/auth/pages/complete_profile/ui/complete_profile.dart';
import 'package:coffeeshopapp/presentation/auth/pages/login/ui/login.dart';
import 'package:coffeeshopapp/presentation/auth/pages/otp/ui/otp.dart';
import 'package:coffeeshopapp/presentation/auth/pages/reset_password/ui/reset_password.dart';
import 'package:coffeeshopapp/presentation/auth/pages/signup/ui/signup.dart';
import 'package:coffeeshopapp/presentation/cart/ui/cart_screen.dart';
import 'package:coffeeshopapp/presentation/dashboard/dashboard_view.dart';
import 'package:coffeeshopapp/presentation/dashboard/home/models/product_data_model.dart';
import 'package:coffeeshopapp/presentation/dashboard/home/models/restaurant_data_model.dart';
import 'package:coffeeshopapp/presentation/dashboard/home/ui/home_screen.dart';
import 'package:coffeeshopapp/presentation/intro/ui/get_started.dart';
import 'package:coffeeshopapp/presentation/item_details/ui/item_details.dart';
import 'package:coffeeshopapp/presentation/order/e_receipt/ui/e_receipt_screen.dart';
import 'package:coffeeshopapp/presentation/order/my_orders/ui/my_orders_screen.dart';
import 'package:coffeeshopapp/presentation/order/order_placed/ui/order_placed_screen.dart';
import 'package:coffeeshopapp/presentation/order/pickup_location/ui/pickup_location_screen.dart';
import 'package:coffeeshopapp/presentation/order/review_summary/ui/review_summary.dart';
import 'package:coffeeshopapp/presentation/permission/location_permission/ui/location_permission.dart';
import 'package:coffeeshopapp/presentation/permission/notification_permission/ui/notification_permission.dart';
import 'package:coffeeshopapp/presentation/qr_code/ui/qr_scan_screen.dart';
import 'package:coffeeshopapp/presentation/restaurant_details/ui/restaurant_details_screen.dart';
import 'package:coffeeshopapp/presentation/review/add_delivery_review/ui/add_delivey_review_screen.dart';
import 'package:coffeeshopapp/presentation/review/add_review/ui/add_review_screen.dart';
import 'package:coffeeshopapp/presentation/review/total_reviews/ui/total_reviews_screen.dart';
import 'package:coffeeshopapp/presentation/settings/ui/settings_screen.dart';
import 'package:coffeeshopapp/presentation/splash/ui/splash.dart';
import 'package:coffeeshopapp/presentation/your_profile/ui/your_profile_screen.dart';
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
  static const String DELIVERY_ADDRESS_LIST = '/delivery_address_list';
  static const String MANAGE_ADDRESS = '/manage_address';
  static const String GET_DIRECTION = '/get_direction';
  static const String RESTAURANT_DETAILS = '/restaurant_details';
  static const String TOTAL_REVIEWS = '/total_reviews';
  static const String ADD_REVIEW = '/add_review';
  static const String ADD_DELIVERY_REVIEW = '/add_delivery_review';
  static const String CHANGE_PASSWORD = '/change_password';
  static const String RESET_PASSWORD = '/reset_password';
  static const String COMPLETE_PROFILE = '/complete_profile';
  static const String YOUR_PROFILE = '/your_profile';
  static const String SETTINGS = '/settings';
  static const String LOCATION_PERMISSION = '/location_permission';
  static const String NOTIFICATION_PERMISSION = '/notification_permission';
  static const String ORDER_PLACED = '/order_placed';
  static const String REVIEW_SUMMARY = '/review_summary';
  static const String E_RECEIPT = '/e_receipt';
  static const String MY_ORDERS = '/my_orders';
  static const String PICKUP_LOCATION = '/pickup_location';
  static const String QR_SCAN = '/qr_scan';

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
      case QR_SCAN:
      // var initialUser = settings.arguments as UserModel;
        return MaterialPageRoute(
          builder: (_) => QrScanScreen(),
        );
      case TOTAL_REVIEWS:
        var restaurant = settings.arguments as Restaurant;
        // var reviews = settings.arguments as List<Review>;
        // var initialUser = settings.arguments as UserModel;
        return MaterialPageRoute(
          builder: (_) => TotalReviewsScreen(restaurant),
        );
      case ADD_REVIEW:
        var restaurant = settings.arguments as Restaurant;
        // var initialUser = settings.arguments as UserModel;
        return MaterialPageRoute(
          builder: (_) => AddReviewScreen(restaurant),
        );
      case CHANGE_PASSWORD:
        return MaterialPageRoute(
          builder: (_) => ChangePasswordScreen(),
        );
      case ORDER_PLACED:
        return MaterialPageRoute(
          builder: (_) => OrderPlacedScreen(),
        );
      case REVIEW_SUMMARY:
        return MaterialPageRoute(
          builder: (_) => ReviewSummary(),
        );
      case E_RECEIPT:
        return MaterialPageRoute(
          builder: (_) => EReceiptScreen(),
        );
      case PICKUP_LOCATION:
        return MaterialPageRoute(
          builder: (_) => PickupLocationScreen(),
        );
      case MY_ORDERS:
        return MaterialPageRoute(
          builder: (_) => MyOrdersScreen(),
        );
      case LOCATION_PERMISSION:
        return MaterialPageRoute(
          builder: (_) => LocationPermission(),
        );
      case NOTIFICATION_PERMISSION:
        return MaterialPageRoute(
          builder: (_) => NotificationPermission(),
        );
      case RESET_PASSWORD:
        return MaterialPageRoute(
          builder: (_) => ResetPasswordScreen(),
        );
      case COMPLETE_PROFILE:
        return MaterialPageRoute(
          builder: (_) => CompleteProfileScreen(),
        );
      case SETTINGS:
        return MaterialPageRoute(
          builder: (_) => SettingsScreen(),
        );
      case YOUR_PROFILE:
        return MaterialPageRoute(
          builder: (_) => YourProfileScreen(),
        );
      case ADD_DELIVERY_REVIEW:
        return MaterialPageRoute(
          builder: (_) => AddDeliveyReviewScreen(),
        );
      case DELIVERY_ADDRESS_LIST:
        // var initialUser = settings.arguments as UserModel;
        return MaterialPageRoute(
          builder: (_) => DeliveryAddressListScreen(),
        );
      case GET_DIRECTION:
        // var initialUser = settings.arguments as UserModel;
        return MaterialPageRoute(
          builder: (_) => GetDirectionScreen(),
        );
      case RESTAURANT_DETAILS:
        var restaurant = settings.arguments as Restaurant;
        // var initialUser = settings.arguments as UserModel;
        return MaterialPageRoute(
          builder: (_) => RestaurantDetailsScreen(restaurant),
        );
      case MANAGE_ADDRESS:
        // var initialUser = settings.arguments as UserModel;
        return MaterialPageRoute(
          builder: (_) => ManageAddressScreen(),
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
