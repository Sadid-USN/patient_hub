import 'package:flutter/material.dart';

abstract class AppColors {
  static const Color appBarColor = Color(0xff0A4B81);
  static const Color appBarSecondary = Color(0xff0B4B81);
  static const Color white = Color(0xffffffff);
  static const Color lightpink = Color(0xffFFF5F5);
  static const Color lightPurple = Color(0xffEEE9FF);
  static const Color lightGreen = Color(0xffE4F5EB);
  static const Color lightGray = Color.fromARGB(255, 238, 237, 237);
}

const headline1 = TextStyle(
    fontWeight: FontWeight.w500, fontSize: 18, color: AppColors.white);
const headline2 = TextStyle(fontWeight: FontWeight.w400, fontSize: 14);
