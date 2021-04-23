import 'package:coiny/widgets/buttons.dart';
import 'package:coiny/widgets/crypto_board.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/model.dart';
import 'home_screen.dart';

class DashBoardScreen extends StatefulWidget {
  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  int _selectedItemIndex = 3;
  bool isActive = true;
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          height: _height,
          child: Column(
            children: [
              SizedBox(height: 60),
              Align(
                alignment: Alignment.center,
                child: Container(
                  child: dashboardLogoMid,
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: _width * 0.9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'You\'re almost\nready to invest.',
                      style: TextStyle(fontSize: 24, fontFamily: 'SF'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              HomeButton(
                borderRadius: 20,
                verticalPadding: 10,
                height: _height * 0.08,
                width: _width * 0.93,
                textValue: 'Complete account setup',
                buttonColor: mainColor,
                textColor: Colors.white,
                onPressedValue: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => HomeScreen(),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView(
                  children: [
                    CryptoBoard(
                      height: _height,
                      width: _width,
                      cryptoName: 'Bitcoin',
                      cryptoPrice: '\$56,000.00',
                      cryptoPriceIncrease: '+US\$3523.0 (4.24%)',
                      cryptoTicker: 'BTC',
                      sparkLineColor: mainColor,
                      sparkLineData: data,
                      sparkLineFillColor: chartFillColor,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CryptoBoard(
                      height: _height,
                      width: _width,
                      cryptoName: 'Bitcoin Cash',
                      cryptoPrice: '\$17,000.00',
                      cryptoPriceIncrease: '+US\$2113.0 (54.24%)',
                      cryptoTicker: 'BCH',
                      sparkLineColor: sparkLineColor2,
                      sparkLineData: data,
                      sparkLineFillColor: chartFillColor2,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          // boxShadow: [BoxShadow(blurRadius: 1, color: bottomBorderColor)]
          border: Border(
            top: BorderSide(
              color: Color(0xffd7d9dd),
              width: 0.5,
            ),
          ),
        ),
        child: Row(
          children: [
            buildExpanded(bottomNav1, true, 0),
            buildExpanded(bottomNav2, true, 1),
            buildExpanded(bottomNav3, true, 2),
            buildExpanded(bottomNav4, true, 3),
          ],
        ),
      ),
    );
  }

  Widget buildExpanded(Widget icon, bool isActive, int index) {
    return Expanded(
      child: Container(
        decoration: _selectedItemIndex == index
            ? BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    mainColor.withOpacity(0.1),
                    mainColor.withOpacity(0.015),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
                ),
                border: Border(
                  top: BorderSide(
                    color:
                        _selectedItemIndex == index ? mainColor : Colors.white,
                    width: 2,
                  ),
                ),
              )
            : BoxDecoration(),
        child: IconButton(
            icon: icon,
            onPressed: () {
              setState(() {
                _selectedItemIndex = index;
              });
            }),
      ),
    );
  }
}
