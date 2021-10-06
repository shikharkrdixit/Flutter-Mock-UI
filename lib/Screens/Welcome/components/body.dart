import 'package:flutter/material.dart';
import 'package:loginsignupapp/Screens/Login/login_screen.dart';
import 'package:loginsignupapp/Screens/Signup/signup_screen.dart';
import 'package:loginsignupapp/Screens/Welcome/components/background.dart';
import 'package:loginsignupapp/components/rounded_button.dart';
import 'package:loginsignupapp/constants.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      key: Key(""),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "WELCOME TO EDU",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.05),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              key: Key(""),
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      // Develop a Login Screen
                      return Text("Login");
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              key: Key(""),
              text: "SIGN UP",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      // Develop a Signup Screen
                      return Text("SignUp");
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
