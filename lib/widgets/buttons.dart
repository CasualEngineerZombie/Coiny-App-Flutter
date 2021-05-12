import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  HomeButton({
    this.textValue,
    this.buttonColor,
    this.width,
    this.textColor,
    this.onPressedValue,
    this.height,
    this.verticalPadding,
    this.borderRadius,
  });

  final textValue;
  final textColor;
  final buttonColor;
  final width;
  final onPressedValue;
  final height;
  final double verticalPadding;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(buttonColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
        ),
        onPressed: onPressedValue,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 25, vertical: verticalPadding),
          child: Text(
            textValue,
            style: TextStyle(
              color: textColor,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
