import 'package:blog_club/helpers/constant.dart';
import 'package:blog_club/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          subtitle1: TextStyle(
            fontFamily: Constant.defaultFontFamily,
            fontSize: 14,
            color: Constant.secondaryTextColor,
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
        textButtonTheme: TextButtonThemeData(style: ButtonStyle(
          textStyle: MaterialStateProperty.all(const TextStyle(
            fontSize: 14,
            fontFamily: Constant.defaultFontFamily,
            fontWeight: FontWeight.w400
          ))
        ))
      ),
      home: const HomeScreen(),
    );
  }
}
