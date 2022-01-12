import 'package:blog_club/gen/assets.gen.dart';
import 'package:blog_club/helpers/data.dart';
import 'package:blog_club/screens/components/posts_list.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themData = Theme.of(context);
    final posts = AppDatabase.posts;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: themData.colorScheme.surface,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_horiz_rounded),
          ),
          const SizedBox(
            width: 16,
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 16,
            ),
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(32, 0, 32, 64),
                  decoration: BoxDecoration(
                    color: themData.colorScheme.surface,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20,
                        color:
                            themData.colorScheme.onBackground.withOpacity(0.1),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Assets.img.stories.story8
                                  .image(width: 84, height: 84),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('@joveidan'),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    'Jovi Daniel',
                                    style:
                                        themData.textTheme.bodyText1?.copyWith(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    'UX Designer',
                                    style: themData.textTheme.bodyText1!.apply(
                                      color: themData.colorScheme.primary,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Text(
                          'About me',
                          style: themData.textTheme.headline6,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Madison Blackstone is a director of user experience design, with experience managing global teams.',
                          style: themData.textTheme.bodyText1!
                              .copyWith(fontWeight: FontWeight.w200),
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 32,
                  left: 96,
                  right: 96,
                  child: Container(
                    height: 32,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        blurRadius: 20,
                        color:
                            themData.colorScheme.onBackground.withOpacity(0.8),
                      ),
                    ]),
                  ),
                ),
                Positioned(
                  bottom: 32,
                  left: 64,
                  right: 64,
                  child: Container(
                    height: 68,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: themData.colorScheme.primary),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff2151cd),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '52',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: themData.colorScheme.onPrimary,
                                  ),
                                ),
                                Text(
                                  'Post',
                                  style: themData.textTheme.bodyText1!.copyWith(
                                    color: themData.colorScheme.onPrimary,
                                    fontWeight: FontWeight.w200,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '250',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: themData.colorScheme.onPrimary,
                                ),
                              ),
                              Text(
                                'Following',
                                style: themData.textTheme.bodyText1!.copyWith(
                                  color: themData.colorScheme.onPrimary,
                                  fontWeight: FontWeight.w200,
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '4.5k',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: themData.colorScheme.onPrimary,
                                ),
                              ),
                              Text(
                                'Followers  ',
                                style: themData.textTheme.bodyText1!.copyWith(
                                  color: themData.colorScheme.onPrimary,
                                  fontWeight: FontWeight.w200,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: themData.colorScheme.surface,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                          'My Posts',
                          style: themData.textTheme.headline5,
                        )),
                        IconButton(
                            onPressed: () {},
                            icon: Assets.img.icons.grid.svg()),
                        IconButton(
                            onPressed: () {},
                            icon: Assets.img.icons.table.svg()),
                      ],
                    ),
                  ),
                  PostsList(posts: posts)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
