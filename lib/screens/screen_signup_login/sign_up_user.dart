import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_demo/consts/app_icons.dart';
import 'package:project_demo/screens/screen_shop/screen_home_shop.dart';

class SignUpUser extends StatefulWidget {
  final String email;
  final String password;

  SignUpUser({required this.email, required this.password});

  @override
  State<SignUpUser> createState() => _SignUpUserState();
}

class _SignUpUserState extends State<SignUpUser> {
  bool password = true;

  @override
  Widget build(BuildContext context) {
    final TextEditingController ctl_email = TextEditingController();
    final TextEditingController ctl_password = TextEditingController();
    final TextEditingController ctl_user = TextEditingController();
    ctl_email.text = "${widget.email}";
    ctl_password.text = "${widget.password}";
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                SizedBox(
                  height: 77.25,
                ),
                SvgPicture.asset(AppPath.ic_carot1),
                SizedBox(
                  height: 100.21,
                ),
                Row(
                  children: [
                    Text(
                      'Sign Up',
                      style: TextStyle(
                          fontSize: 26, color: Color(0xFF181725), fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      'Enter your credentials to continue',
                      style: TextStyle(
                          fontSize: 16, color: Color(0xFF7C7C7C), fontWeight: FontWeight.w400),
                    ),
                    Spacer(),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                TextField(
                  autofocus: true,
                  controller: ctl_user,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 3),
                    labelText: "Username",
                    labelStyle: TextStyle(
                      color: Color(0xFF7C7C7C),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                TextField(
                  controller: ctl_email,
                  decoration: InputDecoration(
                    suffixIcon: Container(
                      padding: EdgeInsets.all(20),
                      child: SvgPicture.asset(
                        AppPath.ic_mark,
                      ),
                    ),
                    contentPadding: EdgeInsets.only(bottom: 3),
                    labelText: "Email",
                    labelStyle: TextStyle(
                      color: Color(0xFF7C7C7C),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                TextField(
                  controller: ctl_password,
                  obscureText: password,
                  decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          password = !password;
                        });
                      },
                      child: Icon(password ? Icons.visibility_off : Icons.visibility),
                    ),
                    labelText: "Password",
                    labelStyle: TextStyle(
                      color: Color(0xFF7C7C7C),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RichText(
                  text: TextSpan(
                      text: 'By continuing you agree to our',
                      style: TextStyle(
                          fontSize: 16, color: Color(0xFF7C7C7C), fontWeight: FontWeight.w400),
                      children: [
                        TextSpan(
                          text: ' Terms of Service',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF53B175),
                          ),
                        ),
                        TextSpan(text: ' and'),
                        TextSpan(
                          text: ' Privacy Policy.',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF53B175),
                          ),
                        ),
                      ]),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    final String email = ctl_email.text;
                    final String user = ctl_user.text;
                    bool isValidEmail = EmailValidator.validate(email);
                    if (isValidEmail && user != '') {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return ScreenHomeShop();
                      }));
                    } else {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text('Cảnh báo'),
                              content: Text('User bị trống hoặc Email không đúng định dạng'),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text('Ok'))
                              ],
                            );
                          });
                    }
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
                        'Sing Up',
                        style: TextStyle(
                            fontSize: 18, color: Colors.white, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have an account?',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Signup',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF53B175),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
