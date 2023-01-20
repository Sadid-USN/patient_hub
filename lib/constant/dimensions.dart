import 'package:flutter/material.dart';

class Dimensions {
  static BuildContext? _context;
  static double screenHeight = MediaQuery.of(_context!).size.height;
  static double bottomSheetHeight = screenHeight / 3 * 0.5;
  static double homeIconHeight = 60.0;
  static double iconPlus = 10.0;
  static double appBarHeight = 102.0;
  static double heightMainCard = 185.0;
  static double heightSecondCard = 110.0;

  static void init(BuildContext context) {
    _context = context;
  }
}
