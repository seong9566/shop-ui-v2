import 'package:flutter/widgets.dart';
import 'package:shop_app_ui/screens/sign_in/sign_in_screen.dart';
import 'package:shop_app_ui/screens/splash/splash_screen.dart';

// route 이름 정의
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
};
