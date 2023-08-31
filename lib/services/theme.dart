import 'package:flutter/material.dart';

class CustomTheme {
  static const Color primaryColor = Color(0xFF2ECC71);
  static const Color secondaryColor = Color(0xFF27AE60);
  static const Color accentColor = Color(0xFFE74C3C);
  static const Color backgroundColor = Color(0xFFECF0F1);
  static const double padding = 20;
  static final ThemeData defaultTheme = _buildTheme();

  ThemeData _buildTheme() {
    ThemeData build = ThemeData.light();

    return build.copyWith();
  }
}
