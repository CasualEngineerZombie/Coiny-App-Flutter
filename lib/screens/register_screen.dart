import 'package:coiny/constants.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool rememberMe = false;
  
  void _onRememberMeChanged(bool newValue) => setState(() {
        rememberMe = newValue;

        if (rememberMe) {
        } else {}
      });
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 60,
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
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    CustomTextField(
                      hintText: 'First Name',
                      prefixText: 'First Name',
                      obscure: false,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomTextField(
                      hintText: 'Last Name',
                      prefixText: 'Last Name',
                      obscure: false,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomTextField(
                      hintText: 'you@example.com',
                      prefixText: 'Email',
                      obscure: false,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomTextField(
                      hintText: 'Minimum 8 Characters',
                      prefixText: 'Password',
                      obscure: false,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: rememberMe,
                      onChanged: _onRememberMeChanged,
                      activeColor: mainColor,
                    ),
                    Container(
                      width: _width*0.7,
                      child: Text(
                        'I certify that I am 18 years of age or older, and I agree to the user agreement and privacy policy.',
                        style: TextStyle(
                          fontSize: 12,
                          color: bottomBorderColor,
                        ),
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
                      color: Colors.white,
                      textValue: 'CANCEL',
                      textColor: Colors.black,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CustomLoginButton(
                        color: mainColor,
                        textValue: 'SIGNUP',
                        textColor: Colors.white)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomLoginButton extends StatelessWidget {
  CustomLoginButton({this.color, this.textValue, this.textColor});
  final color;
  final textValue;
  final textColor;
  
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0))),
      ),
      onPressed: () {},
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
