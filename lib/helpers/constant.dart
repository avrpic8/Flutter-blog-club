import 'package:flutter/material.dart';

class Constant {
  static const String defaultFontFamily = "Avenir";
  static const primaryTextColor = Color(0xff0d253c);
  static const secondaryTextColor = Color(0xff2d4379);

  static ThemeData get myTheme {
    return ThemeData(
      primarySwatch: Colors.blue,
      textTheme: const TextTheme(
        subtitle1: TextStyle(
          fontFamily: Constant.defaultFontFamily,
          fontSize: 14,
          color: Constant.primaryTextColor,
        ),
        subtitle2: TextStyle(
          fontFamily: Constant.defaultFontFamily,
          fontSize: 14,
          color: Constant.secondaryTextColor,
        ),
        caption: TextStyle(
          fontFamily: Constant.defaultFontFamily,
          fontWeight: FontWeight.bold,
          fontSize: 13,
          color: Color(0xff7b8bb2),
        ),
        headline4: TextStyle(
          fontFamily: Constant.defaultFontFamily,
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: Constant.primaryTextColor,
        ),
        headline5: TextStyle(
          fontFamily: Constant.defaultFontFamily,
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Constant.primaryTextColor,
        ),
        headline6: TextStyle(
          fontFamily: Constant.defaultFontFamily,
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Constant.primaryTextColor,
        ),
        bodyText2: TextStyle(
          fontFamily: Constant.defaultFontFamily,
          fontSize: 12,
          color: Constant.secondaryTextColor,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all(
            const TextStyle(
                fontSize: 14,
                fontFamily: Constant.defaultFontFamily,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}
