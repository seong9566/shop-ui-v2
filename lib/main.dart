import 'package:flutter/material.dart';
import 'package:shop_app_ui/constants.dart';

import 'screens/splash/splash_screen.dart';

void main() {
  runApp(const ShopAppUI());
}

class ShopAppUI extends StatelessWidget {
  const ShopAppUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Muli",
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: kTextColor),
          bodyMedium: TextStyle(color: kTextColor),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const SplashScreen(),
    );
  }
}
