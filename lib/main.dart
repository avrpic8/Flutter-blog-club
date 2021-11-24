import 'package:blog_club/helpers/constant.dart';
import 'package:blog_club/screens/components/bottom_navigation.dart';
import 'package:blog_club/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark));
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
      ),
      home: Stack(
        children: const [
          Positioned.fill(child: HomeScreen()),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: BottomNavigation(),
          )
        ],
      ),
    );
  }
}
