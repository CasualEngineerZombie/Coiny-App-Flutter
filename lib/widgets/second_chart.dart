import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:coiny/models/model.dart';

class SecondChart extends StatefulWidget {
  @override
  _SecondChartState createState() => _SecondChartState();
}

class _SecondChartState extends State<SecondChart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Sparkline(
        data: data2,
        lineColor: Colors.black,
      ),
    );
  }
}