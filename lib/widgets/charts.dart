import 'package:coiny/widgets/sparkline_chart.dart';
import 'package:flutter/material.dart';
import 'package:coiny/models/model.dart';

// import '../constants.dart';

class ChartScreen extends StatefulWidget {
  @override
  _ChartScreenState createState() => _ChartScreenState();
}

class _ChartScreenState extends State<ChartScreen> {
  @override
  Widget build(BuildContext context) {
    return SparkLineChart(
      lineColor: Colors.black,
      dataLine: data,
    );
  }
}

