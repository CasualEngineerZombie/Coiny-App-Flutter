import 'package:flutter/material.dart';
import './screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coiny App',
      theme: ThemeData(
        primarySwatch: Colors.green,
        primaryColor: Colors.white,
      ),
      home: HomeScreen(),
    );
  }
}
