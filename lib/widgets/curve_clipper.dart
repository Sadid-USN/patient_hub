import 'package:flutter/material.dart';

class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.0020000, size.height * 0.0060000);
    path0.quadraticBezierTo(size.width * 0.0020000, size.height * 0.7500000,
        size.width * 0.0020000, size.height * 0.9980000);
    path0.lineTo(size.width * 0.9970000, size.height * 0.9980000);
    path0.lineTo(size.width * 0.9980000, size.height * 0.0060000);
    path0.quadraticBezierTo(size.width * 0.5548600, size.height * 0.5134200,
        size.width * 0.0020000, size.height * 0.0060000);
    path0.close();
    return path0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class BottomCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.0010000, size.height * 0.2020000);
    path0.quadraticBezierTo(size.width * 0.0017500, size.height * 0.7990000,
        size.width * 0.0020000, size.height * 0.9980000);
    path0.lineTo(size.width * 0.9990000, size.height * 0.9980000);
    path0.lineTo(size.width * 0.9986800, size.height * 0.2000000);
    path0.quadraticBezierTo(size.width * 0.4636500, size.height * 0.0125800,
        size.width * 0.0010000, size.height * 0.2020000);
    path0.close();
    return path0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
