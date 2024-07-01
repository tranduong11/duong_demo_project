import 'package:flutter/material.dart';
import 'package:project_demo/consts/app_icons.dart';
import 'package:project_demo/screens/screen_plash_welcome/screen_home.dart';

class ScreenPlash extends StatefulWidget {
  const ScreenPlash({super.key});

  @override
  State<ScreenPlash> createState() => _ScreenPlashState();
}

class _ScreenPlashState extends State<ScreenPlash> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ScreenHome()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFF53B175),
      body: Center(
        child: Container(
          width: 250,
          height: 100,
          child: Row(
            children: [
              Image.asset(
                AppPath.ic_carot,
                width: 50,
                height: 60,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Text(
                    'nectar',
                    style:
                        TextStyle(fontSize: 55, color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'o n l i n e  g r o c e r i e t',
                    style:
                        TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w200),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
