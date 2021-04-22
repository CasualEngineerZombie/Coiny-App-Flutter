import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';

class SparkLineChart extends StatelessWidget {
  SparkLineChart({this.lineColor, this.dataLine, this.fillColor});

  final lineColor;
  final dataLine;
  final fillColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Sparkline(
        data: dataLine,
        lineColor: lineColor,
        fillMode: FillMode.below,
        fillColor: fillColor,
      ),
    );
  }
}
