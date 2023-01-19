import 'package:flutter/material.dart';

class Dimensions {
  static BuildContext? _context;
  static double screenHeight = MediaQuery.of(_context!).size.height;
  static double bottomSheetHeight = screenHeight / 2 * 0.3;
  static double homeIconHeight = 70.0;
  static double iconPlus = 10.0;
  static double appBarHeight = 102.0;

  static void init(BuildContext context) {
    _context = context;
  }
}
