import 'package:flutter/material.dart';

class MyTheme {
  static Color primaryColor = Color(0xff121312);

  static Color whiteColor = Colors.white;

  static Color yellowColor = Color(0xffFFBB3B);

  static Color greyColor = Color(0xffC6C6C6);

  static Color containerColor = Color(0xff282A28);

  static Color bottomNavBarColor = Color(0xff1A1A1A);

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: MyTheme.yellowColor,
        unselectedItemColor: MyTheme.greyColor,
        showUnselectedLabels: true,
        selectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ));
}
