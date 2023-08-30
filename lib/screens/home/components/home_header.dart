import 'package:flutter/material.dart';
import 'package:shop_app_ui/screens/home/components/search_field.dart';

import '../../../size_config.dart';
import 'icon_btn_with_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SearchField(),
          IconBtnWithCounter(
            svg: "assets/icons/Cart Icon.svg",
            numOfItems: 0,
            press: () {},
          ),
          IconBtnWithCounter(
            svg: "assets/icons/Bell.svg",
            numOfItems: 3,
            press: () {},
          )
        ],
      ),
    );
  }
}
