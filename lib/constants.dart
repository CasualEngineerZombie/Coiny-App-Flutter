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
);

final String signupSuccessLogo = 'assets/Verify Email ic.svg';
final Widget signupSuccess = SvgPicture.asset(
  signupSuccessLogo,
);

final String dashboardLogo = 'assets/Invest Ic.svg';
final Widget dashboardLogoMid = SvgPicture.asset(
  dashboardLogo,
);

const mainColor = Color(0xff00CA78);
const bottomBorderColor = Color(0xff707070);
const btcTickerColor = Color(0xffFFB119);
const greenPrice = Color(0xff00CA78);
const sparkLineColor2 = Color(0xffFFB119);
const chartFillColor = Color(0xffDBF7EC);
const chartFillColor2 = Color(0xffFFFAF4);


