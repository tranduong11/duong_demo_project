import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_demo/consts/app_icons.dart';
import 'package:project_demo/screens/screen_signup_login/screen_signup_3.dart';

class ScreenSignup2 extends StatefulWidget {
  const ScreenSignup2({super.key});

  @override
  State<ScreenSignup2> createState() => _ScreenSignup2State();
}

class _ScreenSignup2State extends State<ScreenSignup2> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    controller.text = "+088";
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
        child: Column(
          children: [
            Container(
              width: width,
              margin: EdgeInsets.only(left: 25, top: 40),
              child: Text(
                'Enter your mobile number',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              width: width,
              margin: EdgeInsets.only(top: 27, left: 25),
              child: Text(
                'Mobile Number',
                style: TextStyle(fontSize: 16, color: Color(0xFF7C7C7C)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: width,
              margin: EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                onChanged: (text) {},
                controller: controller,
                autofocus: true,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "+088",
                  labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                  prefixIcon: (Image.asset(AppPath.ic_textfield)),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return ScreenSignup3();
                  }),
                );
              },
              child: Container(
                width: 67,
                height: 67,
                padding: EdgeInsets.all(24),
                margin: EdgeInsets.only(top: 193, left: 297, right: 25),
                decoration: BoxDecoration(
                  color: Color(0xFF53B175),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: SvgPicture.asset(
                  AppPath.ic_push,
                  width: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
