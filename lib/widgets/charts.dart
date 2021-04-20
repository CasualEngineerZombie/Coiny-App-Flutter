import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:coiny/models/model.dart';

class ChartScreen extends StatefulWidget {
  @override
  _ChartScreenState createState() => _ChartScreenState();
}

class _ChartScreenState extends State<ChartScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Sparkline(
        data: data,
        lineColor: Colors.black,
      ),
    );
  }
}
