import 'package:coiny/constants.dart';
import 'package:coiny/screens/main_dashboard.dart';
import 'package:coiny/widgets/buttons.dart';
import 'package:flutter/material.dart';

class ScanPictureScreen extends StatefulWidget {
  @override
  _ScanPictureScreenState createState() => _ScanPictureScreenState();
}

class _ScanPictureScreenState extends State<ScanPictureScreen> {
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
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          height: _height,
          child: Column(
            children: [
              SizedBox(height: 80),
              Container(
                width: _width * 0.9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Scan the font',
                      style: TextStyle(fontSize: 24, fontFamily: 'SF'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: _height * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: scanner,
              ),
              HomeButton(
                borderRadius: 20,
                verticalPadding: 10,
                height: _height * 0.08,
                width: _width,
                textValue: 'Take Photo',
                buttonColor: mainColor,
                textColor: Colors.white,
                onPressedValue: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => MainDashboardScreen(),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              HomeButton(
                borderRadius: 20,
                verticalPadding: 10,
                height: _height * 0.08,
                width: _width,
                textValue: 'Continue',
                buttonColor: null,
                textColor: Colors.black,
                onPressedValue: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => MainDashboardScreen(),
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

class ListViewColumn extends StatelessWidget {
  ListViewColumn({
    @required this.height,
    @required this.width,
    @required this.image,
    @required this.text,
    @required this.colored,
  });

  final double height;
  final double width;
  final image;
  final text;
  final bool colored;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListViewItem(
          height: height,
          width: width,
          image: image,
          colored: colored,
        ),
        Text(
          text,
          style: TextStyle(
            fontFamily: 'SF',
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
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
        width: 130,
        decoration: BoxDecoration(
          color: colored == true ? boxColor.withOpacity(0.1) : null,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            width: 2,
            color: colored == true ? mainColor : borderColor.withOpacity(0.5),
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
