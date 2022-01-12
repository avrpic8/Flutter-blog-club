import 'package:blog_club/helpers/constant.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  final Function(int index) onTap;
  final selectedTab;
  const BottomNavigation({Key? key, required this.onTap, this.selectedTab})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      child: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              height: 65,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    color: const Color(0xff9b8487).withOpacity(0.3),
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _BottomNavigationItem(
                    iconFileName: 'Home.png',
                    activeIconFileName: 'Home.png',
                    title: 'Home',
                    onTap: () {
                      onTap(Constant.homeIndex);
                    },
                    isActive: selectedTab == Constant.homeIndex,
                  ),
                  _BottomNavigationItem(
                      iconFileName: 'Articles.png',
                      activeIconFileName: 'Articles.png',
                      title: 'Articles',
                      onTap: () {
                        onTap(Constant.articleIndex);
                      },
                      isActive: selectedTab == Constant.articleIndex),
                  Expanded(child: Container()),
                  _BottomNavigationItem(
                      iconFileName: 'Search.png',
                      activeIconFileName: 'Search.png',
                      title: 'Search',
                      onTap: () {
                        onTap(Constant.searchIndex);
                      },
                      isActive: selectedTab == Constant.searchIndex),
                  _BottomNavigationItem(
                      iconFileName: 'Menu.png',
                      activeIconFileName: 'Menu.png',
                      title: 'Menu',
                      onTap: () {
                        onTap(Constant.menuIndex);
                      },
                      isActive: selectedTab == Constant.menuIndex),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              width: 65,
              height: 85,
              alignment: Alignment.topCenter,
              child: Container(
                height: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32.5),
                  color: const Color(0xff376aed),
                  border: Border.all(color: Colors.white, width: 4),
                ),
                child: Image.asset('assets/img/icons/plus.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _BottomNavigationItem extends StatelessWidget {
  final String iconFileName;
  final String activeIconFileName;
  final String title;
  final Function() onTap;
  final bool isActive;

  const _BottomNavigationItem(
      {Key? key,
      required this.iconFileName,
      required this.activeIconFileName,
      required this.title,
      required this.onTap,
      required this.isActive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/img/icons/$iconFileName'),
            const SizedBox(
              height: 4,
            ),
            Text(
              title,
              style: themeData.textTheme.caption!.apply(
                color: isActive
                    ? themeData.colorScheme.primary
                    : themeData.textTheme.caption!.color,
              ),
            )
          ],
        ),
      ),
    );
  }
}
