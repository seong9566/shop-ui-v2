import 'package:flutter/material.dart';
import 'package:shop_app_ui/routs.dart';
import 'package:shop_app_ui/theme.dart';

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
      theme: theme(),
      //route
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
