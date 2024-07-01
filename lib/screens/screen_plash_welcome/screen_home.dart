import 'package:flutter/material.dart';
import 'package:project_demo/consts/app_icons.dart';
import 'package:project_demo/screens/screen_signup_login/Screen_signup_1.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              width: width,
              height: height,
              child: Image.asset(
                AppPath.img_backgroud_home,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: height * 0.4,
              left: width * 0.45,
              child: Column(
                children: [
                  Image.asset(AppPath.ic_carot),
                ],
              ),
            ),
            Positioned(
              bottom: height * 0.3,
              left: width * 0.25,
              child: Text(
                'Welcome',
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.w500, color: Colors.white),
              ),
            ),
            Positioned(
              bottom: height * 0.23,
              left: width * 0.2,
              child: Text(
                'to our store',
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.w500, color: Colors.white),
              ),
            ),
            Positioned(
              bottom: height * 0.2,
              left: width * 0.13,
              child: Text(
                'Ger your groceries in as fast as one hour',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey),
              ),
            ),
            Positioned(
              bottom: height * 0.075,
              left: width * 0.1,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ScreenSignup1()),
                  );
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
                      'Get Started',
                      style:
                          TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
