import 'package:flutter/material.dart';

class AppTheme {
  static Color primary = Color(0xFFE2BE7F);
  static Color black = Color(0xFF202020);
  static Color white = Color(0xFFFFFFFF);

  static ThemeData lightTheme = ThemeData();

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: black,
    appBarTheme: AppBarThemeData(
      backgroundColor: black,
      foregroundColor: primary,
      titleTextStyle: TextStyle(fontSize: 20, fontWeight: .bold),
      centerTitle: true,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: primary,
      type: .fixed,
      showUnselectedLabels: false,
      selectedItemColor: black,
    ),
  );
}
