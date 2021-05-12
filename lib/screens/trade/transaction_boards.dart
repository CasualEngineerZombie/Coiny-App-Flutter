import 'package:coiny/widgets/buttons.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class TransactionBoard extends StatefulWidget {
  @override
  _TransactionBoardState createState() => _TransactionBoardState();
}

class _TransactionBoardState extends State<TransactionBoard> {
  int _selectedItemIndex = 3;
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.black,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 15.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  icon: customBackButtonWhite,
                                  onPressed: () => Navigator.pop(context),
                                ),
                                Expanded(
                                  child: Text(
                                    'Bitcoin',
                                    style: TextStyle(
                                      fontFamily: 'SF',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      icon: grid,
                                      onPressed: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) => TransactionBoard(),
                                        ),
                                      ),
                                    ),
                                    IconButton(
                                      icon: send,
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              "\$67.35",
                              style: TextStyle(
                                fontFamily: 'SF',
                                fontSize: 38,
                                color: Colors.white,
                              ),
                            ),
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                ),
                                side: BorderSide(color: Colors.white, width: 1),
                              ),
                              onPressed: () {},
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 12,
                                ),
                                child: Text(
                                  'Your Account',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Flexible(
                          child: Positioned(
                            top: 20,
                            child: Container(
                              width: double.infinity,
                              constraints: BoxConstraints(
                                minHeight:
                                    MediaQuery.of(context).size.height - 180.0,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30.0),
                                  topRight: Radius.circular(30.0),
                                ),
                                color: Colors.grey,
                              ),
                              padding: EdgeInsets.all(24.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Row(
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
                                  SizedBox(
                                    height: _height * 0.1,
                                  ),
                                  Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'You have no transactions',
                                          style: TextStyle(
                                            fontFamily: 'SF',
                                            fontSize: 20,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                            'Buy Bitcoin now and your\ntransactions will be shown here',
                                            style: TextStyle(
                                                fontFamily: 'SF',
                                                fontSize: 14,
                                                color: Colors.black
                                                    .withOpacity(0.5)),
                                            textAlign: TextAlign.center),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
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
