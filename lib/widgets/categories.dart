import 'package:flutter/material.dart';

import 'category.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            Category(
              title: 'All',
              icon: Icons.explore_rounded,
              marginLeft: 16,
            ),
            Category(
              title: 'Montains',
              icon: Icons.landscape_rounded,
            ),
            Category(
              title: 'Beaches',
              icon: Icons.beach_access_rounded,
            ),
            Category(title: 'Undergrounds', icon: Icons.landslide_rounded),
            Category(
              title: 'Forests',
              icon: Icons.forest_rounded,
              marginRight: 16,
            ),
          ],
        ),
      ),
    );
  }
}
