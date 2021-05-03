import 'package:coiny/constants.dart';
import 'package:flutter/material.dart';
import 'package:coiny/widgets/buttons.dart';

import 'login_screen.dart';

class VerifyAccountScreen extends StatefulWidget {
  @override
  _VerifyAccountScreenState createState() => _VerifyAccountScreenState();
}

class _VerifyAccountScreenState extends State<VerifyAccountScreen> {
  @override
  Widget build(BuildContext context) {
    final _listViewHeight = 150;
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
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
                Container(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ListViewItem(
                          height: _height,
                          width: _width,
                          image: identityCard,
                          colored: true,
                        ),
                        ListViewItem(
                          height: _height,
                          width: _width,
                          image: driversLicense,
                          colored: false,
                        ),
                        ListViewItem(
                          height: _height,
                          width: _width,
                          image: passport,
                          colored: false,
                        ),
                      ],
                    )),
                SizedBox(
                  height: 60,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: HomeButton(
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ListViewItem extends StatelessWidget {
  ListViewItem({
    @required this.height,
    @required this.width,
    @required this.image,
    @required this.colored,
  });

  final double height;
  final double width;
  final image;
  final bool colored;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.all(10),
        height: 150,
        width: 120,
        decoration: BoxDecoration(
          color: colored==true?boxColor.withOpacity(0.1):null,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            width: 2,
            color: colored==true?mainColor:borderColor.withOpacity(0.5),
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          height: height * 0.2,
          width: width * 0.2,
          child: image,
        ),
      ),
    );
  }
}
