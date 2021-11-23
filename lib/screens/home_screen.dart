import 'package:blog_club/screens/components/posts_lis.dart';
import 'package:flutter/material.dart';
import 'components/story_list.dart';
import 'components/category_list.dart';
import 'package:blog_club/helpers/data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final stories = AppDatabase.stories;
    final categories = AppDatabase.categories;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 16, 32, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hi, Jonathan!',
                      style: themeData.textTheme.subtitle1,
                    ),
                    Image.asset(
                      'assets/img/icons/notification.png',
                      width: 24,
                      height: 24,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 0, 0, 24),
                child: Text(
                  'Explore todays',
                  style: themeData.textTheme.headline4,
                ),
              ),
              StoryList(stories: stories),
              const SizedBox(
                height: 16,
              ),
              CategoryList(categories: categories),
              const PostsList(),
            ],
          ),
        ),
      ),
    );
  }
}
