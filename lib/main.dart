import 'package:blog_club/helpers/constant.dart';
import 'package:blog_club/screens/article_screen.dart';
import 'package:blog_club/screens/components/bottom_navigation.dart';
import 'package:blog_club/screens/home_screen.dart';
import 'package:blog_club/screens/profile_screen.dart';
import 'package:blog_club/screens/search_screen.dart';
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
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = Constant.homeIndex;

  final GlobalKey<NavigatorState> _homeKey = GlobalKey();
  final GlobalKey<NavigatorState> _articleKey = GlobalKey();
  final GlobalKey<NavigatorState> _searchKey = GlobalKey();
  final GlobalKey<NavigatorState> _menuKey = GlobalKey();

  late var map = {
    Constant.homeIndex: _homeKey,
    Constant.articleIndex: _articleKey,
    Constant.searchIndex: _searchKey,
    Constant.menuIndex: _menuKey,
  };

  final List<int> _historyTab = [];

  Future<bool> popStack() async {
    final NavigatorState currentSelectedTabIndex =
        map[selectedIndex]!.currentState!;

    if (currentSelectedTabIndex.canPop()) {
      currentSelectedTabIndex.pop();
      return false;
    } else if (_historyTab.isNotEmpty) {
      setState(() {
        selectedIndex = _historyTab.last;
        _historyTab.removeLast();
      });
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: popStack,
      child: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              bottom: 65,
              child: IndexedStack(
                index: selectedIndex,
                children: [
                  _navigate(key: _homeKey, index: Constant.homeIndex, page: const HomeScreen()),
                  _navigate(key: _articleKey, index: Constant.articleIndex, page: const ArticleScreen()),
                  _navigate(key: _searchKey, index: Constant.searchIndex, page: const SearchScreen()),
                  _navigate(key: _menuKey, index: Constant.menuIndex, page: const ProfileScreen()),

                ],
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: BottomNavigation(
                onTap: (int index) {
                  setState(() {
                    _historyTab.remove(selectedIndex);
                    _historyTab.add(selectedIndex);
                    selectedIndex = index;
                  });
                },
                selectedTab: selectedIndex,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _navigate({required GlobalKey key, required int index, required Widget page}) {
    return key.currentState == null && selectedIndex!=index ? Container() : Navigator(
      key: key,
      onGenerateRoute: (settings) => MaterialPageRoute(
          builder: (context) =>
              Offstage(offstage: selectedIndex != index, child: page)),
    );
  }
}
