import 'package:flutter/material.dart';

extension ColorExtension on String {
  toColor(double opacity) {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16)).withOpacity(opacity);
  }
}
