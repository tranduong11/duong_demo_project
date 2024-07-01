import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_demo/consts/app_icons.dart';
import 'package:project_demo/models/entity/entity_shop/object_shop.dart';
import 'package:project_demo/models/entity/entity_shop/product_entity_1.dart';
import 'package:project_demo/models/response/users.dart';
import 'package:project_demo/repository/app_repossitory.dart';
import 'package:project_demo/screens/screen_shop/screen_add.dart';

class ScreenHomeShop extends StatefulWidget {
  const ScreenHomeShop({super.key});

  @override
  State<ScreenHomeShop> createState() => _ScreenHomeShopState();
}

class _ScreenHomeShopState extends State<ScreenHomeShop> {
  List<ProductEntity> listProduct = [
    ProductEntity(
        id: 1,
        images: AppPath.img_apple,
        name: "Naturel Red Apple",
        subName: "1kg, Price",
        price: 4.99,
        description:
            "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
        mass: 100,
        evaluate: 100),
    ProductEntity(
        id: 2,
        images: AppPath.img_apple,
        name: "Naturel ",
        subName: "5kg, Pricefghdfgdfghdfghfgh",
        price: 4.999,
        description: "Apples are nutritious. Apples may be good for weight loss. ",
        mass: 200,
        evaluate: 100),
    ProductEntity(
        id: 3,
        images: AppPath.img_apple,
        name: "Naturel Red Apple",
        subName: "1kg, Price",
        price: 4.999999,
        description:
            "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. ",
        mass: 300,
        evaluate: 100),
  ];

  List<ObjectShop> listItem = [
    ObjectShop(
        imsges: AppPath.img_bananas_shop,
        title: "Organic Bananas",
        subtite: "7pcs, Priceg",
        money: "\$4.99"),
    ObjectShop(
        imsges: AppPath.img_apple_shop,
        title: "Red Apple",
        subtite: "1kg, Priceg",
        money: "\$4.99"),
    ObjectShop(
        imsges: AppPath.img_chilli_shop,
        title: "Organic Bananas",
        subtite: "7p9cs, Priceg",
        money: "\$4.99"),
    ObjectShop(
        imsges: AppPath.img_ginger_shop,
        title: "Organic Bananas",
        subtite: "7p9cs, Priceg",
        money: "\$4.99"),
  ];
  int _currentPage = 0;

  late Timer _timer;
  PageController _pageController = PageController(
      //initialPage: 0,
      );

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 450),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  int indicator = 0;

  AppRepository connectMethod = AppRepository();
  Users? users;

  Future<void> initData() async {
    final res = await connectMethod.getDataUSD(id: '2');
    if (res != null) {
      setState(() {
        users = res;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Container(width: 30, height: 40, child: SvgPicture.asset(AppPath.ic_carot1)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppPath.ic_shop),
                SizedBox(width: 5),
                Text(
                  '${users?.support?.text}',
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xFF4C4F4D)),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(left: 24.71, right: 24.71),
              height: 51.57,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFF2F3F2),
                  hintText: "Search Store",
                  prefixIcon: Container(
                    padding: EdgeInsets.all(18.21),
                    child: SvgPicture.asset(
                      AppPath.ic_search_shop,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelStyle: TextStyle(
                      fontSize: 14, color: Color(0xFF7C7C7C), fontWeight: FontWeight.w500),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 0.1, color: Color(0xFFF2F3F2)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 0.1, color: Color(0xFFF2F3F2)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Container(
              height: 580,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Container(
                      width: width,
                      height: 120,
                      margin: EdgeInsets.only(left: 24.71, right: 24.71),
                      child: Stack(
                        children: [
                          PageView(
                            pageSnapping: false,
                            padEnds: false,
                            allowImplicitScrolling: true,
                            physics: BouncingScrollPhysics(),
                            controller: _pageController,
                            onPageChanged: (index) {
                              setState(() {
                                indicator = index;
                              });
                            },
                            children: [
                              SizedBox(
                                height: 115,
                                child: Image.asset(AppPath.img_banner_shop1),
                              ),
                              SizedBox(
                                height: 115,
                                child: Image.asset(AppPath.img_banner_shop1),
                              ),
                              SizedBox(
                                height: 115,
                                child: Image.asset(AppPath.img_banner_shop1),
                              ),
                            ],
                          ),
                          Positioned(
                            bottom: 10,
                            left: 145,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                3,
                                (index) => Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 3),
                                  child: AnimatedContainer(
                                    curve: Curves.easeIn,
                                    duration: Duration(milliseconds: 450),
                                    width: index == indicator ? 18 : 8,
                                    height: 8,
                                    decoration: BoxDecoration(
                                      color: Colors.pink,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      margin: EdgeInsets.only(left: 24.71, right: 24.71),
                      child: Row(
  ,
                      )
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 24.71),
                      height: 248.51,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        itemCount: listItem.length,
                           return getItem(index, listItem[index]);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 24.71, right: 24.71),
                      child: Row(
                        children: [
                          Text(
                            'Best Selling',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF181725),
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          Text(
                            'See all',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF53B175),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 24.71),
                      height: 248.51,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        itemCount: listItem.length,
                        itemBuilder: (context, index) {
                          //return getItem(index, listItem[index]);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 24.71, right: 24.71),
                      child: Row(
                        children: [
                          Text(
                            'Groceries',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF181725)),
                          ),
                          Expanded(child: SizedBox()),
                          Text(
                            'See all',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF53B175),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      margin: EdgeInsets.only(left: 24.71),
                      height: 248.51,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        itemCount: listItem.length,
                        itemBuilder: (context, index) {
                          //return getItem(index, listItem[index]);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getItem(int index, ObjectShop item) {
    return Container(
      width: 165,
      height: 248.51,
      margin: EdgeInsets.only(right: 11.8),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 0.5, color: Colors.grey),
          left: BorderSide(width: 0.5, color: Colors.grey),
          right: BorderSide(width: 0.5, color: Colors.grey),
          bottom: BorderSide(width: 0.5, color: Colors.grey),
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Container(
            width: 100,
            height: 80,
            margin: EdgeInsets.only(
              top: 25.21,
              left: 33.84,
              right: 39.55,
            ),
            child: Image.asset(item.imsges ?? ''),
          ),
          SizedBox(
            height: 25.26,
          ),
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Text(
                item.title ?? '',
                style:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF181725)),
              ),
              Spacer(),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Text(
                item.subtite ?? '',
                style:
                    TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF7C7C7C)),
              ),
              Spacer(),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Text(
                item.money.toString() ?? '',
                style:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Color(0xFF181725)),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return ScreenAdd(
                          productEntity: listProduct[index],
                        );
                      },
                    ),
                  );
                },
                child: Container(
                  width: 45.67,
                  height: 45.67,
                  padding: EdgeInsets.all(14.33),
                  decoration: BoxDecoration(
                    color: Color(0xFF00B36F),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: SvgPicture.asset(AppPath.ic_add),
                ),
              ),
              SizedBox(
                width: 14,
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
