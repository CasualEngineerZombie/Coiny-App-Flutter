import 'package:coiny/screens/verify_phone_number.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class PhoneConfirmationScreen extends StatefulWidget {
  @override
  _PhoneConfirmationScreenState createState() =>
      _PhoneConfirmationScreenState();
}

class _PhoneConfirmationScreenState extends State<PhoneConfirmationScreen> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        title: Text(
          'Buy',
          style: TextStyle(
            fontFamily: 'SF',
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          icon: customBackButton,
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: Container(
          height: _height,
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: 40),
              Align(
                alignment: Alignment.center,
                child: Container(
                  child: phoneConfirmation,
                ),
              ),
              SizedBox(height: 40),
              Container(
                width: _width * 0.9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'You\'re almost ready\nto buy. Please complete\nyour account',
                      style: TextStyle(fontSize: 24, fontFamily: 'SF'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Column(
                children: [
                  CustomVerifyButton(
                    textValue: 'Verify your phone',
                    pressedValue: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => VerifyPhoneNumberScreen(),
                      ),
                    ),
                  ),
                  CustomVerifyButton(
                    textValue: 'Verify your identify',
                    pressedValue: (){},
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

class CustomVerifyButton extends StatelessWidget {
  CustomVerifyButton({this.textValue, this.pressedValue});
  final textValue;
  final pressedValue;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Padding(
        padding: EdgeInsets.only(right: 20, top: 10, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              textValue,
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'SF',
                color: Colors.black,
              ),
            ),
            checkMark,
          ],
        ),
      ),
      onPressed: pressedValue,
    );
  }
}
