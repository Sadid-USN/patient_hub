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

class AppBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(0, size.height * 0.0021800);
    path0.quadraticBezierTo(size.width * -0.0017600, size.height * 0.7461800, 0,
        size.height * 0.9960000);
    path0.lineTo(size.width, size.height * 0.9975600);
    path0.quadraticBezierTo(size.width * 0.7515500, size.height * 0.9991800,
        size.width * 0.6469800, size.height * 0.9978800);
    path0.quadraticBezierTo(size.width * 0.5616600, size.height * 0.3218600,
        size.width * 0.4030400, size.height * 0.0008400);
    path0.quadraticBezierTo(size.width * 0.4061400, size.height * -0.0035800, 0,
        size.height * 0.0021800);
    path0.close();

    return path0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
