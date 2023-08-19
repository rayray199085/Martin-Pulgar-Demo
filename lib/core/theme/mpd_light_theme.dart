import 'package:flutter/material.dart';

class MspLightTheme {
  static ThemeData get getThemeData {
    return ThemeData(
      colorScheme:
          const ColorScheme.light().copyWith(secondary: Colors.grey.shade400),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.all(_primaryColor),
      ),
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          titleTextStyle: TextStyle(
            fontSize: _appBarTitleFontSize,
            fontWeight: FontWeight.w600,
          )),
      scaffoldBackgroundColor: _backgroundColor,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: _mediumButtonFontSize,
            color: Colors.white,
          ),
          backgroundColor: _primaryColor,
        ),
      ),
    );
  }

  static const Color _primaryColor = Color(0xFF97D602);
  static const Color _backgroundColor = Color(0xFFF1F5F7);

  static const double _mediumButtonFontSize = 16.0;
  static const double _appBarTitleFontSize = 32.0;
}
