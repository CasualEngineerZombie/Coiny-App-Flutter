import 'package:coiny/constants.dart';
import 'package:coiny/screens/dashboard.dart';
import 'package:coiny/screens/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final _screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          height: _screenHeight,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(
                  height: 150,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Image(
                    width: 141,
                    height: 154,
                    image: AssetImage(
                      'assets/Login Ic.png',
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      CustomTextField(
                        hintText: 'your@example.com',
                        prefixText: 'Email',
                        obscure: false,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CustomTextField(
                        hintText: '*******',
                        prefixText: 'Password',
                        obscure: true,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot password? Tap to reset',
                        style: TextStyle(
                          fontSize: 13,
                          color: bottomBorderColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomLoginButton(
                        onTapValue: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => HomeScreen(),
                          ),
                        ),
                        color: Colors.white,
                        textValue: 'CANCEL',
                        textColor: Colors.black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CustomLoginButton(
                        onTapValue: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => DashBoardScreen(),
                          ),
                        ),
                        color: mainColor,
                        textValue: 'LOGIN',
                        textColor: Colors.white,
                      )
                    ],
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

class CustomLoginButton extends StatelessWidget {
  CustomLoginButton(
      {this.color, this.textValue, this.textColor, this.onTapValue});
  final color;
  final textValue;
  final textColor;
  final onTapValue;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0))),
      ),
      onPressed: onTapValue,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 17),
        child: Text(
          textValue,
          style: TextStyle(
            color: textColor,
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {@required this.hintText, @required this.prefixText, this.obscure});

  final hintText;
  final prefixText;
  final obscure;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscure,
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: bottomBorderColor),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: mainColor),
        ),
        hintText: hintText,
        labelText: prefixText,
        labelStyle: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontFamily: 'SF',
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
