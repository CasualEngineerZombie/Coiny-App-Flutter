import 'package:coiny/models/model.dart';
import 'package:coiny/widgets/buttons.dart';
import 'package:coiny/widgets/crypto_board.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int _selectedItemIndex = 0;
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
          // padding: EdgeInsets.symmetric(horizontal: 10),
          height: _height,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '\$54,000.00',
                      style: TextStyle(
                        fontFamily: 'SF',
                        fontSize: 38,
                      ),
                    ),
                    Text(
                      '+US\$6,961.01 (561.99%) this year',
                      style: TextStyle(
                        fontFamily: 'SF',
                        fontSize: 14,
                        color: mainColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CryptoBoardDetail(
                height: _height * 0.35,
                width: _width,
                cryptoName: 'Lite Coin',
                cryptoPrice: '\$344.53',
                cryptoPriceIncrease: '+US\$65.0 (47.99%)',
                cryptoTicker: 'LTC',
                sparkLineColor: sparkLineColor2,
                sparkLineData: data,
                sparkLineFillColor: sparkLineColor2.withOpacity(0.1),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    MonthButton(textValue: 'Apr', color: Colors.black),
                    MonthButton(textValue: 'Jun', color: Colors.black),
                    MonthButton(textValue: 'Aug', color: Colors.black),
                    MonthButton(textValue: 'Oct', color: Colors.black),
                    MonthButton(textValue: 'Dec', color: Colors.black),
                    MonthButton(textValue: 'Feb', color: Colors.black),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    MonthButton(
                      textValue: '1H',
                      color: borderColor.withOpacity(0.5),
                    ),
                    MonthButton(
                      textValue: '1D',
                      color: borderColor.withOpacity(0.5),
                    ),
                    MonthButton(
                      textValue: '1M',
                      color: borderColor.withOpacity(0.5),
                    ),
                    MonthButton(
                      textValue: '1Y',
                      color: borderColor.withOpacity(0.5),
                    ),
                    MonthButton(
                        textValue: 'ALL', color: borderColor.withOpacity(0.5)),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 4, bottom: 2, left: 5, right: 5),
                child: Row(
                  children: [
                    Expanded(
                      child: HomeButton(
                        borderRadius: 20,
                        verticalPadding: 10,
                        height: _height * 0.08,
                        width: _width,
                        textValue: 'Buy',
                        buttonColor: Colors.black,
                        textColor: Colors.white,
                        onPressedValue: () {},
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: HomeButton(
                        borderRadius: 20,
                        verticalPadding: 10,
                        height: _height * 0.08,
                        width: _width,
                        textValue: 'Sell',
                        buttonColor: mainColor,
                        textColor: Colors.white,
                        onPressedValue: () {},
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 2,
                    color: borderColor.withOpacity(0.1)
                  )
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Row(
                        children: [
                          bitcoin,
                          Text(
                            'BTC Wallet',
                            style: TextStyle(fontFamily: 'SF', fontSize: 14),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
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
              // setState(() {
              //   _selectedItemIndex = index;
              // });
            }),
      ),
    );
  }
}

class MonthButton extends StatelessWidget {
  MonthButton({this.textValue, this.color});

  final textValue;
  final color;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        child: Text(
          textValue,
          style: TextStyle(
            fontFamily: 'SF',
            fontSize: 13,
            color: color,
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
