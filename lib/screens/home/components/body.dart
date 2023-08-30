import 'package:flutter/material.dart';
import 'package:shop_app_ui/size_config.dart';

import 'home_header.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(20)),
            const HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(20)),
            const DisCountBanner(),
          ],
        ),
      ),
    );
  }
}

class DisCountBanner extends StatelessWidget {
  const DisCountBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin : 위젯 외부 여백
      margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(20),
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFF4A3298),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Text.rich(
        TextSpan(text: "A Summer Surpise\n", style: TextStyle(color: Colors.white), children: [
          TextSpan(
              text: "Cashback 20%",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              )),
        ]),
      ),
    );
  }
}
