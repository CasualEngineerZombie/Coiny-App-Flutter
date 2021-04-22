import 'package:flutter/material.dart';

import '../../constants.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          Expanded(
            child: IconButton(icon: bottomNav1, onPressed: (){}),
          ),
          Expanded(
            child: IconButton(icon: bottomNav2, onPressed: (){}),
          ),
        ],
      ),
    );
  }
}