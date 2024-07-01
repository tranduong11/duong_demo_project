import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_demo/consts/app_icons.dart';
import 'package:project_demo/models/entity/entity_explore/object_%20images_name.dart';

class ScreenExplore extends StatefulWidget {
  const ScreenExplore({super.key});

  @override
  State<ScreenExplore> createState() => _ScreenExploreState();
}

class _ScreenExploreState extends State<ScreenExplore> {
  List<ObjectImagesName> listColor = [
    // ObjectImagesName(images: )
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Find Products',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF181725)),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Container(
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
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelStyle: TextStyle(
                      fontSize: 14, color: Color(0xFF7C7C7C), fontWeight: FontWeight.w500),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 0.1, color: Color(0xFFF2F3F2)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 0.1, color: Color(0xFFF2F3F2)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: height,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    childAspectRatio: 3 / 3.25,
                    mainAxisSpacing: 15,
                  ),
                  itemBuilder: (context, int index) {
                    return buildGridView();
                  }),
            ),
          ],
        ),
      ),
    );
  }

  Container buildGridView() {
    return Container(
      width: 300,
      height: 500,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border(
          top: BorderSide(width: 1, color: Color(0xFF53B175)),
          bottom: BorderSide(width: 1, color: Color(0xFF53B175)),
          left: BorderSide(width: 1, color: Color(0xFF53B175)),
          right: BorderSide(width: 1, color: Color(0xFF53B175)),
        ),
      ),
    );
  }
}
