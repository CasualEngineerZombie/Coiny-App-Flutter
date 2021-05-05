import 'package:coiny/models/model.dart';
import 'package:coiny/screens/detail_screen.dart';
import 'package:coiny/widgets/crypto_board.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class MainDashboardScreen extends StatefulWidget {
  @override
  _MainDashboardScreenState createState() => _MainDashboardScreenState();
}

class _MainDashboardScreenState extends State<MainDashboardScreen> {
  int _selectedItemIndex = 3;
  bool isActive = true;
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
          'US\$0.00',
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
          padding: EdgeInsets.symmetric(horizontal: 10),
          height: _height,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => DetailScreen(),
                        ),
                      ),
                      child: CryptoBoard(
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
                    SizedBox(
                      height: 10,
                    ),
                    CryptoBoard(
                      height: _height,
                      width: _width,
                      cryptoName: 'Lite Coin',
                      cryptoPrice: '\$344.53',
                      cryptoPriceIncrease: '+US\$65.0 (47.99%)',
                      cryptoTicker: 'LTC',
                      sparkLineColor: Color(0Xff19B2FF),
                      sparkLineData: data,
                      sparkLineFillColor: Color(0Xff19B2FF).withOpacity(0.1),
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
                gradient: LinearGradient(colors: [
                  mainColor.withOpacity(0.1),
                  mainColor.withOpacity(0.015),
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
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
