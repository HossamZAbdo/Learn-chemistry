import 'package:flutter/material.dart';

class MyThemeData {
  static Color primaryBlue = const Color(0xFF5D9CEC);
  static Color green = const Color(0xFF61E757);
  static Color red = const Color(0xFFEC4B4B);
  static Color white = const Color(0xFFFFFFFF);
  static Color black = const Color(0xFF0C0B0B);
  static Color background = const Color(0xFFDFECDB);
  static Color backgrounddark = const Color(0xFF060E1E);
  static Color black_Dark = const Color(0xFF141922);
  static Color kDarkGreenColor = const Color(0xFF184A2C);
  static Color kGinColor = const Color(0xFFE5F0EA);
  static Color kSpiritedGreen = const Color(0xFFC1DFCB);
  static Color kFoamColor = const Color(0xFFEBFDF2);
  static Color kGreyColor = Colors.grey.shade600;



  static ThemeData lightMode = ThemeData(
    appBarTheme: AppBarTheme(
        color: primaryBlue,
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: white)),
    textTheme: TextTheme(
      headline1:
          TextStyle(fontSize: 25, color: black, fontWeight: FontWeight.w300),
      headline3:
          TextStyle(fontSize: 50, color: white, fontWeight: FontWeight.w700),
      headline5: TextStyle(
          fontSize: 25, color: primaryBlue, fontWeight: FontWeight.w700),
      subtitle1:
          TextStyle(fontSize: 25, color: white, fontWeight: FontWeight.w400),
      subtitle2:
          TextStyle(fontSize: 50, color: black, fontWeight: FontWeight.bold),
      bodyText1: TextStyle(fontSize: 12, color: black),
    ),
    //backgroundColor: background,

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: primaryBlue,
      unselectedItemColor: black,
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.white,
    ),
  );

  static ThemeData darkMode = ThemeData(
    appBarTheme: AppBarTheme(
        color: primaryBlue,
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: white)),
    textTheme: TextTheme(
      headline1:
          TextStyle(fontSize: 25, color: white, fontWeight: FontWeight.w300),
      headline3:
          TextStyle(fontSize: 50, color: white, fontWeight: FontWeight.w700),
      headline5:
          TextStyle(fontSize: 25, color: white, fontWeight: FontWeight.w700),
      subtitle1: TextStyle(
          fontSize: 25, color: primaryBlue, fontWeight: FontWeight.w400),
      subtitle2:
          TextStyle(fontSize: 50, color: black, fontWeight: FontWeight.bold),
      bodyText1: TextStyle(fontSize: 12, color: white),
    ),
    backgroundColor: backgrounddark,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: backgrounddark,
      selectedItemColor: primaryBlue,
      unselectedItemColor: white,
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.black,
    ),
  );
}
