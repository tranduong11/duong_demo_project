import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_demo/consts/app_icons.dart';
import 'package:project_demo/models/entity/entity_singnup_4/yourzone.dart';
import 'package:project_demo/screens/screen_signup_login/screen_login.dart';

class ScreenSignup4 extends StatefulWidget {
  const ScreenSignup4({super.key});

  @override
  State<ScreenSignup4> createState() => _ScreenSignup4State();
}

class _ScreenSignup4State extends State<ScreenSignup4> {
  List<YourZone> listItem = [
    YourZone('Hà nội'),
    YourZone('Ninh Bình'),
    YourZone('Hà Nam'),
    YourZone('Nam Định'),
    YourZone('Thái Bình'),
    YourZone('Hà Giang'),
    YourZone('Hà nội'),
    YourZone('Ninh Bình'),
    YourZone('Hà Nam'),
    YourZone('Nam Định'),
    YourZone('Thái Bình'),
    YourZone('Hà Giang'),
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: EdgeInsets.only(left: 25, top: 15, bottom: 15, right: 20),
            child: SvgPicture.asset(
              AppPath.ic_back,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SvgPicture.asset(AppPath.img_signup4),
              SizedBox(
                height: 40.15,
              ),
              Text(
                'Select Your Location',
                style:
                    TextStyle(fontSize: 26, color: Color(0xFF181725), fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Swithch on your location to stay in tune with \n what’s happening in your area',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF7C7C7C),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 90,
              ),
              SizedBox(
                width: width * 0.85,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Your Zone',
                    contentPadding: EdgeInsets.only(bottom: 1),
                    labelStyle: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF7C7C7C),
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Danh sách mục'),
                              content: Container(
                                height: 200,
                                width: double.maxFinite,
                                child: ListView.builder(
                                  itemCount: listItem.length,
                                  itemBuilder: (BuildContext context, int index) {
                                    return getItem(index, listItem[index]);
                                  },
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                          padding: EdgeInsets.all(16), child: SvgPicture.asset(AppPath.ic_dialog)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: width * 0.85,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Your Area',
                    contentPadding: EdgeInsets.only(bottom: 1),
                    //helperText: 'Your Zone',
                    labelStyle: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF7C7C7C),
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Danh sách mục'),
                              content: Container(
                                height: 200,
                                width: double.maxFinite,
                                child: ListView.builder(
                                  itemCount: 10,
                                  itemBuilder: (BuildContext context, int index) {
                                    return ListTile(
                                      title: Text('khu ${index + 1}'),
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                    );
                                  },
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                          padding: EdgeInsets.all(16), child: SvgPicture.asset(AppPath.ic_dialog)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40.35,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ScreenLogin();
                  }));
                },
                child: Container(
                  width: width * 0.8,
                  height: 65,
                  decoration: BoxDecoration(
                    color: Color(0xFF53B175),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      'Submit',
                      style:
                          TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getItem(int index, YourZone item) {
    return Column(
      children: [
        Container(
          height: 25,
          width: double.maxFinite,
          child: Text(
            item.yourZone1 ?? '',
            style: TextStyle(fontSize: 18, color: Color(0xFF181725)),
          ),
        ),
        Divider(
          color: Colors.blue,
          thickness: 1.0,
        ),
      ],
    );
  }
}
