import 'package:coiny/screens/dashboard.dart';
import 'package:coiny/widgets/buttons.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'home_screen.dart';

class SignupSuccessScreen extends StatefulWidget {
  @override
  _SignupSuccessScreenState createState() => _SignupSuccessScreenState();
}

class _SignupSuccessScreenState extends State<SignupSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          height: _height,
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(height: 80),
              Align(
                alignment: Alignment.center,
                child: Container(
                  child: signupSuccess,
                ),
              ),
              SizedBox(height: 80),
              Container(
                width: _width * 0.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Please Verify Your\nemail Address',
                      style: TextStyle(fontSize: 24, fontFamily: 'SF'),
                    ),
                    Text(
                      'We sent a verification email to\nyou@example.com.\nclick the link in the email to get started',
                      style: TextStyle(fontSize: 14, fontFamily: 'SF'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 80),
              HomeButton(
                width: _width * 0.85,
                textValue: 'OPEN EMAIL APP',
                buttonColor: mainColor,
                textColor: Colors.white,
                onPressedValue: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DashBoardScreen(),
                  ),
                ),
              ),
              SizedBox(
                height: 3,
              ),
              HomeButton(
                width: _width * 0.85,
                textValue: 'CANCEL',
                buttonColor: Colors.white,
                textColor: Colors.black,
                onPressedValue: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => HomeScreen(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
