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
      theme: Constant.myTheme,
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
