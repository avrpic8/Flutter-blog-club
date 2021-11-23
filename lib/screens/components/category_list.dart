import 'package:flutter/material.dart';
import 'package:blog_club/helpers/Carousel/carousel_slider.dart';
import 'package:blog_club/helpers/data.dart';
import 'category_item.dart';

class CategoryList extends StatelessWidget {
  final List<Category> categories;
  const CategoryList({
    Key? key, required this.categories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: categories.length,
      itemBuilder: (context, idex, realIndex) {
        return CategoryItem(
          rightPad: realIndex == categories.length - 1 ? 32 : 8,
          leftPad: realIndex == 0 ? 32 : 8,
          category: categories[realIndex],
        );
      },
      options: CarouselOptions(
          scrollDirection: Axis.horizontal,
          scrollPhysics: const BouncingScrollPhysics(),
          viewportFraction: 0.8,
          aspectRatio: 1.2,
          disableCenter: true,
          enableInfiniteScroll: false,
          enlargeCenterPage: true,
          enlargeStrategy: CenterPageEnlargeStrategy.height),
    );
  }
}
