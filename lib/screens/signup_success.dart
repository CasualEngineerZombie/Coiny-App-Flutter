import 'package:coiny/screens/dashboard.dart';
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

class HomeButton extends StatelessWidget {
  HomeButton({
    this.textValue,
    this.buttonColor,
    this.width,
    this.textColor,
    this.onPressedValue,
  });

  final textValue;
  final textColor;
  final buttonColor;
  final width;
  final onPressedValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(buttonColor),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0))),
        ),
        onPressed: onPressedValue,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 17),
          child: Text(
            textValue,
            style: TextStyle(
              color: textColor,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
