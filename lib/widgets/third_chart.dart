import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:coiny/models/model.dart';

class ThirdChart extends StatefulWidget {
  @override
  _ThirdChartState createState() => _ThirdChartState();
}

class _ThirdChartState extends State<ThirdChart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Sparkline(
        data: data3,
        lineColor: Colors.black,
      ),
    );
  }
}