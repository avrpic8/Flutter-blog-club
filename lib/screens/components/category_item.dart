import 'package:flutter/material.dart';
import 'package:blog_club/helpers/data.dart';

class CategoryItem extends StatelessWidget {
  final double rightPad;
  final double leftPad;
  final Category category;
  const CategoryItem({
    Key? key,
    required this.category,
    required this.rightPad,
    required this.leftPad,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(leftPad, 0, rightPad, 0),
      child: Stack(
        children: [
          Positioned.fill(
            top: 100,
            right: 56,
            left: 56,
            bottom: 20,
            child: Container(
                decoration: const BoxDecoration(boxShadow: [
              BoxShadow(blurRadius: 20, color: Color(0xaa0d253c))
            ])),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
              ),
              foregroundDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                gradient: const LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                  colors: [
                    Color(0xaa0d253c),
                    Colors.transparent,
                  ],
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(32),
                child: Image.asset(
                  'assets/img/posts/large/${category.imageFileName}',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 48,
            left: 32,
            child: Text(
              category.title,
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}