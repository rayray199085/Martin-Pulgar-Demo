import 'package:flutter/material.dart';

class MspLightTheme {
  static ThemeData get getThemeData {
    return ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: _primaryColor,
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(
              _primaryColor), // Set the desired button color
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: _primaryColor,
        unselectedItemColor:
            _secondaryColor, // Set the desired selected icon color
      ),
    );
  }

  static Color _primaryColor = Color(0xFF198CD8);
  static Color _secondaryColor = Color(0xFF555555);
}
