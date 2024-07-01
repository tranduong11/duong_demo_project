import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_demo/consts/app_icons.dart';
import 'package:project_demo/screens/screen_signup_login/screen_signup_4.dart';

class ScreenSignup3 extends StatefulWidget {
  const ScreenSignup3({super.key});

  @override
  State<ScreenSignup3> createState() => _ScreenSignup3State();
}

class _ScreenSignup3State extends State<ScreenSignup3> {
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
        child: Column(
          children: [
            Container(
              width: width,
              margin: EdgeInsets.only(left: 25, top: 40),
              child: Text(
                'Enter your 4-digit code',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              width: width,
              margin: EdgeInsets.only(top: 27, left: 25),
              child: Text(
                'Code',
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
                onChanged: (text) {
                  // values = text;
                },
                //controller: controller,
                autofocus: true,
                obscureText: true,
                //textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 197,
            ),
            Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Thông báo'),
                            content: Text(
                                "Mã đã được gửi về số điện thoại của bạn vui lòng giữ bảo mật!!"),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    'Ok',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Color(0xFF53B175),
                                        fontWeight: FontWeight.w500),
                                  ))
                            ],
                          );
                        });
                  },
                  child: Container(
                    child: Text(
                      'Resend Code',
                      style: TextStyle(fontSize: 18, color: Color(0xFF53B175)),
                    ),
                  ),
                ),
                Expanded(child: SizedBox()),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return ScreenSignup4();
                      }),
                    );
                  },
                  child: Container(
                    width: 67,
                    height: 67,
                    padding: EdgeInsets.all(24),
                    //margin: EdgeInsets.only(top: 193, left: 297, right: 25),
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
                SizedBox(
                  width: 25,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
