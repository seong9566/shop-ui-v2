import 'package:flutter/widgets.dart';
import 'package:shop_app_ui/screens/complete_profile/complete_profile_screen.dart';
import 'package:shop_app_ui/screens/forgot_password/forgot_password_screen.dart';
import 'package:shop_app_ui/screens/home/home_screen.dart';
import 'package:shop_app_ui/screens/login_success/login_success_screens.dart';
import 'package:shop_app_ui/screens/otp/otp_screen.dart';
import 'package:shop_app_ui/screens/profile/profile_screen.dart';
import 'package:shop_app_ui/screens/sign_in/sign_in_screen.dart';
import 'package:shop_app_ui/screens/sign_up_screen/sign_up_screen.dart';
import 'package:shop_app_ui/screens/splash/splash_screen.dart';

// route 이름 정의
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
  OtpScreen.routeName: (context) => const OtpScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
};
