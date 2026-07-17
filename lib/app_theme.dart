import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xFFE2BE7F);
  static const Color black = Color(0xFF202020);
  static const Color white = Color(0xFFFFFFFF);

  static ThemeData lightTheme = ThemeData();

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: black,
    appBarTheme: AppBarThemeData(
      backgroundColor: black,
      foregroundColor: primary,
      titleTextStyle: TextStyle(fontSize: 20, fontWeight: .bold, color: primary),
      centerTitle: true,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: primary,
      type: .fixed,
      showUnselectedLabels: false,
      selectedItemColor: black,
    ),
    textTheme: TextTheme(
      headlineSmall: TextStyle(fontSize: 24, fontWeight: .bold, color: black),
      titleLarge: TextStyle(fontSize: 20, fontWeight: .bold, color: white),
      titleMedium: TextStyle(fontSize: 16, fontWeight: .bold, color: white),
      titleSmall: TextStyle(fontSize: 14, fontWeight: .bold, color: white),
    ),
  );
}
