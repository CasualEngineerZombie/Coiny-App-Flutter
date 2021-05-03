import 'package:coiny/constants.dart';
import 'package:flutter/material.dart';
import 'package:coiny/widgets/buttons.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';

import 'login_screen.dart';

class VerifyAccountScreen extends StatefulWidget {
  @override
  _VerifyAccountScreenState createState() => _VerifyAccountScreenState();
}

class _VerifyAccountScreenState extends State<VerifyAccountScreen> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        title: Text(
          'Verify Account',
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
        child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Container(
            height: _height,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 80),
                Container(
                  width: _width * 0.9,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Choose your\ndocument type',
                        style: TextStyle(fontSize: 24, fontFamily: 'SF'),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                PageView.builder(
                  itemBuilder: (context, position) {
                    return Container();
                  },
                  itemCount: 3, // Can be null
                ),
                SizedBox(
                  height: 60,
                ),
                HomeButton(
                  borderRadius: 20,
                  verticalPadding: 10,
                  height: _height * 0.08,
                  width: _width,
                  textValue: 'Complete account setup',
                  buttonColor: mainColor,
                  textColor: Colors.white,
                  onPressedValue: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => LoginScreen(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
