import 'package:blog_club/helpers/data.dart';
import 'package:blog_club/screens/components/post_item.dart';
import 'package:flutter/material.dart';

class PostsList extends StatelessWidget {
  final List<PostData> posts;
  const PostsList({Key? key, required this.posts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
        ListView.builder(
            physics: const ClampingScrollPhysics(),
            itemCount: posts.length,
            itemExtent: 141,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final post = posts[index];
              return PostItem(post: post);
            })
      ],
    );
  }
}
