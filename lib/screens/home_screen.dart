import 'package:blog_club/gen/assets.gen.dart';

import 'components/posts_list.dart';
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
    final posts = AppDatabase.posts;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
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
                    Assets.img.icons.notification.image(width: 32, height: 32),
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
              Padding(
                padding: const EdgeInsets.only(left: 32, right: 24, top: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Latest News',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'More',
                        style: TextStyle(color: Color(0xff376aed)),
                      ),
                    )
                  ],
                ),
              ),
              PostsList(posts: posts),
              const SizedBox(
                height: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
