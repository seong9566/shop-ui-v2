import 'package:flutter/material.dart';
import 'package:shop_app_ui/constants.dart';
import 'package:shop_app_ui/size_config.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Tokoto, Let's shoop!",
      "img": "assets/images/splash_1.png",
    },
    {
      "text": "We help people conect with store \naround Uinited State of America",
      "img": "assets/images/splash_2.png",
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "img": "assets/images/splash_3.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  text: splashData[index]['text'],
                  img: splashData[index]['img'],
                ),
              ),
            ),
            const Expanded(
              flex: 2,
              child: SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}

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
              Text(text!),
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
