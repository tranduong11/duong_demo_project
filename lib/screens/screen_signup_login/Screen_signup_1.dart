import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_demo/consts/app_icons.dart';
import 'package:project_demo/screens/screen_signup_login/screen_signup_2.dart';

class ScreenSignup1 extends StatefulWidget {
  const ScreenSignup1({super.key});

  @override
  State<ScreenSignup1> createState() => _ScreenSignup1State();
}

class _ScreenSignup1State extends State<ScreenSignup1> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    FocusNode nodeOne = FocusNode();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: width,
              height: 375,
              //child: Svgpic.asset(AppPath.img_signup_1),
              child: Image.asset(AppPath.img_signup),
            ),
            SizedBox(
              height: 49,
            ),
            Row(
              children: [
                SizedBox(
                  width: 24,
                ),
                Text(
                  'Get your groceries \n with nectar',
                  style: TextStyle(fontSize: 26, color: Colors.black, fontWeight: FontWeight.w500),
                ),
                Spacer(),
              ],
            ),
            SizedBox(height: 15),
            Container(
              width: width,
              height: 50,
              margin: EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ScreenSignup2(),
                    ),
                  );
                },
                focusNode: nodeOne,
                keyboardType: TextInputType.number,
                controller: _controller,
                decoration: InputDecoration(
                  hintText: "+088",
                  labelStyle: TextStyle(color: Colors.black, fontSize: 18),
                  prefixIcon: (Image.asset(AppPath.ic_textfield)),
                ),
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Or connect with social media',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF828282)),
            ),
            SizedBox(height: 20),
            Container(
              width: width * 0.85,
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xFF5383EC),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 35,
                  ),
                  Image.asset(AppPath.ic_google),
                  SizedBox(
                    width: 35,
                  ),
                  Text(
                    'Continue with Google',
                    style: TextStyle(color: Color(0xFFFCFCFC), fontSize: 18),
                  ),
                  Spacer(),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: width * 0.85,
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xFF4A66AC),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 35,
                  ),
                  SvgPicture.asset(AppPath.ic_facebook),
                  SizedBox(
                    width: 35,
                  ),
                  Text(
                    'Continue with Google',
                    style: TextStyle(color: Color(0xFFFCFCFC), fontSize: 18),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
