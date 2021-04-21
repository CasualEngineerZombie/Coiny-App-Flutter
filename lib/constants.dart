import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


final String assetName = 'assets/logomark2.svg';
final Widget svgLogo = SvgPicture.asset(
  assetName,
  // semanticsLabel: 'Acme Logo'
);

final String assetLoginLogo = 'assets/Login Ic.svg';
final Widget loginLogo = SvgPicture.asset(
  assetLoginLogo,
  // semanticsLabel: 'Acme Logo'
);

const mainColor = Color(0xff00CA78);
const bottomBorderColor = Color(0xff707070);