import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_demo/consts/app_icons.dart';
import 'package:project_demo/screens/screen_account/screen_home_account.dart';
import 'package:project_demo/screens/screen_cart/screen_home_cart.dart';
import 'package:project_demo/screens/screen_explore/screen_home_explore.dart';
import 'package:project_demo/screens/screen_favourite/screen_home_favourite.dart';
import 'package:project_demo/screens/screen_shop/screen_home_shop.dart';

class HomepageView extends StatefulWidget {
  const HomepageView({super.key});

  @override
  State<HomepageView> createState() => _HomepageViewState();
}

class _HomepageViewState extends State<HomepageView> {
  int indexTab = 0;
  PageController controller = PageController(viewportFraction: 1, keepPage: true);

  @override
  Widget build(BuildContext context) {
    List<Widget> listTab = [
      buildIconTab(0, AppPath.ic_page_shop, 'Shop'),
      buildIconTab(1, AppPath.ic_explore_shop, 'Explore'),
      buildIconTab(2, AppPath.ic_cart_shop, 'Cart'),
      buildIconTab(3, AppPath.ic_favourite_shop, 'Favourite'),
      buildIconTab(4, AppPath.ic_account_shop, 'Account'),
    ];
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              pageSnapping: false,
              padEnds: false,
              physics: BouncingScrollPhysics(),
              onPageChanged: (index) {
                setState(() {
                  indexTab = index;
                });
              },
              children: [
                ScreenHomeShop(),
                ScreenExplore(),
                ScreenCart(),
                ScreenFavourite(),
                ScreenAccount(),
              ],
              controller: controller,
            ),
          ),
          Container(
            height: 55,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: listTab,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildIconTab(int index, String iconPath, String title) {
    return GestureDetector(
      onTap: () {
        setState(() {
          indexTab = index;
        });
        controller.animateToPage(
          index,
          duration: Duration(milliseconds: 500),
          curve: Curves.linear,
        );
      },
      child: Column(
        children: [
          SvgPicture.asset(
            iconPath,
            width: 28.35,
            height: 18.21,
            color: indexTab == index ? Color(0xFF53B175) : Color(0xFF181725),
          ),
          Text(
            '$title',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: indexTab == index ? Color(0xFF53B175) : Color(0xFF181725),
            ),
          ),
        ],
      ),
    );
  }
}
