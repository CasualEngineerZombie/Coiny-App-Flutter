import 'package:coiny/widgets/sparkline_chart.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class CryptoBoard extends StatelessWidget {
  CryptoBoard({
    @required this.height,
    @required this.width,
    this.cryptoName,
    this.cryptoPrice,
    this.cryptoPriceIncrease,
    this.cryptoTicker,
    this.sparkLineColor,
    this.sparkLineFillColor,
    this.sparkLineData,
  });

  final double height;
  final double width;
  final sparkLineColor;
  final sparkLineFillColor;
  final sparkLineData;
  final cryptoName;
  final cryptoTicker;
  final cryptoPrice;
  final cryptoPriceIncrease;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.3,
      width: width * 0.90,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: sparkLineColor,
            width: 2,
          )),
      child: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        cryptoName,
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'SF',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                                color: sparkLineColor,
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            cryptoTicker,
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'SF',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        cryptoPrice,
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'SF',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                        ),
                      ),
                      Text(
                        cryptoPriceIncrease,
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'SF',
                          color: greenPrice,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'PAST DAY',
                    style: TextStyle(
                      fontSize: 11,
                      fontFamily: 'SF',
                    ),
                  ),
                  Divider(
                    color: mainColor,
                    height: 2,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: SparkLineChart(
                    lineColor: sparkLineColor,
                    dataLine: sparkLineData,
                    fillColor: sparkLineFillColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CryptoBoardDetail extends StatelessWidget {
  CryptoBoardDetail({
    @required this.height,
    @required this.width,
    this.cryptoName,
    this.cryptoPrice,
    this.cryptoPriceIncrease,
    this.cryptoTicker,
    this.sparkLineColor,
    this.sparkLineFillColor,
    this.sparkLineData,
    this.borderColor,
  });

  final double height;
  final double width;
  final sparkLineColor;
  final sparkLineFillColor;
  final sparkLineData;
  final cryptoName;
  final cryptoTicker;
  final cryptoPrice;
  final cryptoPriceIncrease;
  final borderColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border(
          top: BorderSide(
            color: borderColor,
            width: 2,
          ),
          bottom: BorderSide(
            color: borderColor,
            width: 2,
          ),
        ),
      ),
      child: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: SparkLineChart(
                    lineColor: sparkLineColor,
                    dataLine: sparkLineData,
                    fillColor: sparkLineFillColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
