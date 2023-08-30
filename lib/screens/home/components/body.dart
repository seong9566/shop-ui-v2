import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app_ui/constants.dart';
import 'package:shop_app_ui/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(20)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: SizeConfig.screenWidth * 0.6, // 가로의 60%
                    decoration: BoxDecoration(
                      color: kSecondaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextField(
                      onChanged: (value) {
                        // 검색
                      },
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintText: "Search Product",
                        prefixIcon: const Icon(Icons.search),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(20),
                          vertical: getProportionateScreenWidth(9),
                        ),
                      ),
                    ),
                  ),
                  IconBtnWithCounter(
                    svg: "assets/icons/Cart Icon.svg",
                    numOfItems: 1,
                    press: () {},
                  ),
                  IconBtnWithCounter(
                    svg: "assets/icons/Bell.svg",
                    numOfItems: 3,
                    press: () {},
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    required this.svg,
    required this.numOfItems,
    required this.press,
    super.key,
  });

  final String svg;
  final int numOfItems;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        //Stack 내부 요소가 잘리지 않음.
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(12)),
            height: getProportionateScreenWidth(46),
            width: getProportionateScreenWidth(46),
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(svg),
          ),
          Positioned(
            top: -3,
            right: 0,
            child: Container(
              height: getProportionateScreenWidth(16),
              width: getProportionateScreenWidth(16),
              decoration: BoxDecoration(
                color: const Color(0xFFFF4848),
                shape: BoxShape.circle,
                border: Border.all(width: 1.5, color: Colors.white),
              ),
              child: Center(
                child: Text(
                  "$numOfItems",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(10),
                    height: 1,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
