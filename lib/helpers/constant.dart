import 'package:blog_club/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

class Constant {
  static const primaryTextColor = Color(0xff0d253c);
  static const secondaryTextColor = Color(0xff2d4379);

  static const int homeIndex = 0;
  static const int articleIndex = 1;
  static const int searchIndex = 2;
  static const int menuIndex = 3;

  static ThemeData get myTheme {
    return ThemeData(
      colorScheme: const ColorScheme.light(
        primary: Color(0xff376aed),
        onPrimary: Colors.white,
        surface: Colors.white,
        onSurface: primaryTextColor,
        background: Color(0xfffbfcff),
        onBackground: primaryTextColor,
      ),
      appBarTheme: const AppBarTheme(
          titleSpacing: 32,
          backgroundColor: Colors.white,
          foregroundColor: primaryTextColor,
          elevation: 0),
      snackBarTheme:
          const SnackBarThemeData(backgroundColor: Color(0xff376aed)),
      primarySwatch: Colors.blue,
      textTheme: const TextTheme(
        subtitle1: TextStyle(
          fontFamily: FontFamily.avenir,
          fontSize: 14,
          color: Constant.primaryTextColor,
        ),
        subtitle2: TextStyle(
          fontFamily: FontFamily.avenir,
          fontSize: 14,
          color: Constant.secondaryTextColor,
        ),
        caption: TextStyle(
          fontFamily: FontFamily.avenir,
          fontWeight: FontWeight.bold,
          fontSize: 13,
          color: Color(0xff7b8bb2),
        ),
        headline4: TextStyle(
          fontFamily: FontFamily.avenir,
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: Constant.primaryTextColor,
        ),
        headline5: TextStyle(
          fontFamily: FontFamily.avenir,
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Constant.primaryTextColor,
        ),
        headline6: TextStyle(
          fontFamily: FontFamily.avenir,
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Constant.primaryTextColor,
        ),
        bodyText1: TextStyle(
          fontFamily: FontFamily.avenir,
          fontSize: 14,
          color: Constant.primaryTextColor,
        ),
        bodyText2: TextStyle(
          fontFamily: FontFamily.avenir,
          fontSize: 12,
          color: Constant.secondaryTextColor,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all(
            const TextStyle(
                fontSize: 14,
                fontFamily: FontFamily.avenir,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}
