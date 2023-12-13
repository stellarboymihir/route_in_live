import 'package:flutter/material.dart';

class MyColor {
  static const Color orange = Color(0xFFE66100);
  static Color orangeO = const Color(0xFFE66100).withOpacity(0.7);
  static const Color yellow = Color(0xFFE63100);
  static const Color lorange = Color(0xFFEE8D03);
  static const Color dorange = Color(0xFFF2B705);
  static const Color lred = Color(0xFFE64646);
  static const Color iosblue = Color(0xFF007AFF);
  static const Color black = Color(0xFF303030);
  static Color blackO = const Color(0xFF303030).withOpacity(0.3);
  static const LinearGradient orangeGrad = LinearGradient(colors: [
    Color(0xFFF2B705),
    Color(0xFFEE8D03),
    Color(0xFFE63100),
  ]);
}
