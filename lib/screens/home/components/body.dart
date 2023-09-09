import 'package:flutter/material.dart';
import 'package:shop_app_ui/screens/home/components/popular_products.dart';
import 'package:shop_app_ui/screens/home/components/special_offers.dart';
import 'package:shop_app_ui/size_config.dart';

import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    //screen이 late로 선언되어 있기 때문에 build가 실행 전 Media의 사이즈가 한번 초기화 되어야한다.
    SizeConfig().init(context);
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(20)),
            const HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(30)),
            const DisCountBanner(),
            SizedBox(height: getProportionateScreenWidth(30)),
            const Categories(),
            SizedBox(height: getProportionateScreenWidth(30)),
            const SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            const PopularProducts()
          ],
        ),
      ),
    );
  }
}
