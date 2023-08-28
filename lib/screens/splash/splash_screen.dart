import 'package:flutter/material.dart';
import 'package:shop_app_ui/screens/splash/components/body.dart';
import 'package:shop_app_ui/size_config.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //build전에 페이지의 크기를 초기화 시켜준다.
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}
