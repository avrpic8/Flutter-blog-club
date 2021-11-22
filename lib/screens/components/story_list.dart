import 'package:flutter/material.dart';
import 'package:blog_club/helpers/data.dart';
import 'package:blog_club/screens/components/story.dart';

class StoryList extends StatelessWidget {
  final List<StoryData> stories;

  const StoryList({
    Key? key,
    required this.stories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: ListView.builder(
        itemCount: stories.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
        itemBuilder: (context, index) {
          final story = stories[index];
          return Story(story: story);
        },
      ),
    );
  }
}
