import 'package:flutter/material.dart';

abstract class AppColors {
  static const Color appBarColor = Color(0xff0A4B81);
  static const Color appBarColorRight = Color(0xff0B4B81);
  static const Color appBarSecondary = Color(0xff0B4B81);
  static const Color white = Color(0xffffffff);
  static const Color black = Color(0xff000000);
  static const Color blackDate = Color(0xff181818);
  static const Color headline3 = Color(0xff4B4B4B);
  static const Color statusColor = Color(0xff852727);
  static const Color gray = Color(0xffEEEEEE);
  static const Color green = Color(0xff246B18);
  static const Color dropDownColor = Color.fromARGB(255, 240, 242, 252);

  static const Color lightGray = Color.fromARGB(255, 238, 237, 237);
}

List<Color> itemColor = [
  const Color(0xffFFF2F0),
  const Color(0xffEEE9FF),
  const Color(0xffE4F5EB),
  const Color(0xffFFF2F0),
  const Color(0xffEEE9FF),
  const Color(0xffE4F5EB),
];

const headline1 = TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 18,
  color: AppColors.white,
);
const headline2 = TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 16,
  color: AppColors.blackDate,
);
const headline3 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 12,
    color: AppColors.headline3,
    overflow: TextOverflow.ellipsis);
const headline4 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 12,
    color: AppColors.headline3,
    overflow: TextOverflow.ellipsis);
const headline5 = TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 14,
  color: AppColors.statusColor,
);
