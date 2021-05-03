import 'package:coiny/constants.dart';
import 'package:flutter/material.dart';
import 'package:coiny/widgets/buttons.dart';

import 'login_screen.dart';

class EnterPhoneNumberScreen extends StatefulWidget {
  @override
  _EnterPhoneNumberScreenState createState() =>
      _EnterPhoneNumberScreenState();
}

class _EnterPhoneNumberScreenState extends State<EnterPhoneNumberScreen> {

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
          'Add Phone Number',
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
          physics: BouncingScrollPhysics(),
          child: Container(
            height: _height,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 40),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    child: verifyPhone,
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
                        'Verify your phone\nnumber',
                        style: TextStyle(fontSize: 24, fontFamily: 'SF'),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Increase account security by verifying a\nphone number',
                        style: TextStyle(fontSize: 14, fontFamily: 'SF'),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Container(
                  width: _width * 0.9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'UNITED STATES',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'SF',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      forwardIcon
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: _height * 0.08,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: borderColor.withOpacity(0.25),
                        width: 1,
                      ),
                      bottom: BorderSide(
                        color: borderColor.withOpacity(0.25),
                        width: 1,
                      ),
                    ),
                  ),
                  
                ),
                SizedBox(
                  height: 40,
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
