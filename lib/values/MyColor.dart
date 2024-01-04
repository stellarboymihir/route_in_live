import 'package:flutter/material.dart';

class MyColor {
  static const Color orange = Color(0xFFE66100);
  static Color orangeO = const Color(0xFFE66100).withOpacity(0.3);
  static const Color dred = Color(0xFFE63100);
  static const Color lred = Color(0xFFE64646);
  static const Color lorange = Color(0xFFEE8D03);
  static const Color lemonyellow = Color(0xFFF2B705);
  static const Color iosblue = Color(0xFF007AFF);
  static const Color black = Color(0xFF303030);
  static const Color yellow = Color(0xFFFEE500);
  static const Color green = Color(0xFF1EC800);
  static const Color googlered = Color(0xFFE24939);
  static const Color grey = Color(0xFFF5F5F5);
  static const Color purple = Color(0xFF693ACC);
  static const Color yellowamber = Color(0xFFF2B705);
  static const Color white = Color(0xFFFFFFFF);
  static const Color lgrey = Color(0xFFC4C4C4);
  static Color yellowO = const Color(0xfff2b70533).withOpacity(0.2);
  static Color blackO = const Color(0xFF303030).withOpacity(0.3);
  static const LinearGradient orangeGrad = LinearGradient(
    colors: [
      Color(0xFFF2B705),
      Color(0xFFEE8D03),
      Color(0xFFE63100),
    ],
  );
  static LinearGradient inOrangeGrad = LinearGradient(colors: [
    const Color(0xFFE66100).withOpacity(0.3),
    const Color(0xFFE66100).withOpacity(0.3),
    const Color(0xFFE66100).withOpacity(0.3)
  ]);

  static LinearGradient purpleGrad =
      const LinearGradient(colors: [Color(0xFF693ACC), Color(0xFFE66100)]);

  static LinearGradient circleOrange = const LinearGradient(colors: [
    Color(0xFFE63100),
    Color(0xFFEE8D03),
    Color(0xFFF2B705),
  ]);
}
