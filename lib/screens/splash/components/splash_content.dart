import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    this.text,
    this.img,
    super.key,
  });
  final String? text;
  final String? img;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Column(
            children: [
              const Spacer(), // 빈공간 생성
              Text(
                "TOKOTO",
                style: TextStyle(fontSize: getProportionateScreenHeight(36), color: kPrimaryColor, fontWeight: FontWeight.bold),
              ),
              Text(
                text!,
                textAlign: TextAlign.center,
              ),
              const Spacer(flex: 2),
              Image.asset(
                img!,
                height: getProportionateScreenHeight(265),
                width: getProportionateScreenWidth(235),
              )
            ],
          ),
        ),
      ],
    );
  }
}
