import 'package:flutter/material.dart';

class AllyCareTheme {
  static ThemeData light() {
    final base = ThemeData.light();
    return base.copyWith(
      primaryColor: const Color(0xFF4C6EF5),
      scaffoldBackgroundColor: Colors.white,
      textTheme: base.textTheme.apply(
        bodyColor: const Color(0xFF1F2937),
        displayColor: const Color(0xFF1F2937),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
        ),
      ),
    );
  }
}
