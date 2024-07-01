import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_demo/consts/app_icons.dart';
import 'package:project_demo/models/entity/entity_shop/product_entity_1.dart';

class ScreenAdd extends StatefulWidget {
  final ProductEntity productEntity;

  ScreenAdd({required this.productEntity});

  @override
  State<ScreenAdd> createState() => _ScreenAddState();
}

class _ScreenAddState extends State<ScreenAdd> {
  @override
  Widget build(BuildContext context) {
    int count = 1;
    double width = MediaQuery.of(context).size.width;
    //double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF2F3F2),
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child:
                Container(padding: EdgeInsets.all(20), child: SvgPicture.asset(AppPath.ic_back))),
        actions: [
          Container(
            width: 18.46,
            height: 18.46,
            margin: EdgeInsets.only(right: 25.3),
            child: SvgPicture.asset(AppPath.ic_upward_add),
          ),
        ],
      ),
      body: buildColumn(width, count),
    );
  }

  Column buildColumn(double width, int count) {
    return Column(
      children: [
        Container(
          width: width,
          height: 230,
          padding: EdgeInsets.only(bottom: 50),
          decoration: BoxDecoration(
            color: Color(0xFFF2F3F2),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
          ),
          child: Center(
            child: Image.asset(widget.productEntity.images.toString()),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                SizedBox(
                  height: 18,
                ),
                Row(
                  children: [
                    Text(
                      '${widget.productEntity.name}',
                      style: TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF181725)),
                    ),
                    Spacer(),
                    SvgPicture.asset(AppPath.ic_favourite),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '${widget.productEntity.subName}',
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFF7C7C7C)),
                    ),
                    Spacer(),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    SvgPicture.asset(AppPath.ic_apart),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 45.67,
                      height: 45.67,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        border: Border(
                          top: BorderSide(width: 1, color: Color(0xFFE2E2E2)),
                          left: BorderSide(width: 1, color: Color(0xFFE2E2E2)),
                          right: BorderSide(width: 1, color: Color(0xFFE2E2E2)),
                          bottom: BorderSide(width: 1, color: Color(0xFFE2E2E2)),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          '$count',
                          style: TextStyle(
                              color: Color(0xFF181725), fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SvgPicture.asset(AppPath.ic_screen_add),
                    Spacer(),
                    Text(
                      '${widget.productEntity.price}',
                      style: TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF181725)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: Color(0xFFE2E2E2),
                  thickness: 0.5,
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text(
                      'Product Detail',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF181725),
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 14,
                      height: 8.4,
                      child: SvgPicture.asset(AppPath.ic_page_add),
                    ),
                  ],
                ),
                SizedBox(height: 9),
                Text(
                  '${widget.productEntity.description}',
                  style: TextStyle(
                      fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xFF7C7C7C)),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Color(0xFFE2E2E2),
                  thickness: 0.5,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      'Nutritions',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF181725),
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 33.61,
                      height: 18,
                      decoration: BoxDecoration(
                        color: Color(0xFFEBEBEB),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          '${widget.productEntity.mass}',
                          style: TextStyle(
                              fontSize: 9, fontWeight: FontWeight.w500, color: Color(0xFF7C7C7C)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.6,
                    ),
                    Container(
                      width: 8.3,
                      height: 14,
                      child: SvgPicture.asset(AppPath.ic_page_1_add),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Color(0xFFE2E2E2),
                  thickness: 0.5,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      'Review',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF181725),
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 92.47,
                      height: 14,
                      child: SvgPicture.asset(AppPath.ic_evaluate_add),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 8.3,
                      height: 14,
                      child: SvgPicture.asset(AppPath.ic_page_1_add),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: width * 0.8,
                    height: 65,
                    decoration: BoxDecoration(
                      color: Color(0xFF53B175),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Add To Basket',
                        style: TextStyle(
                            fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
