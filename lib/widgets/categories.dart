import 'package:adventurers_guild/models/destinations_model.dart';
import 'package:flutter/material.dart';

import 'category.dart';

class Categories extends StatelessWidget {
  final Function onCategoryTap;

  const Categories(this.onCategoryTap, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Category(
              title: 'All',
              icon: Icons.explore_rounded,
              marginLeft: 16,
              onCategoryTap: onCategoryTap,
              category: ECategories.all,
            ),
            Category(
              title: 'Montains',
              icon: Icons.landscape_rounded,
              onCategoryTap: onCategoryTap,
              category: ECategories.mountains,
            ),
            Category(
              title: 'Islands',
              icon: Icons.landscape_rounded,
              onCategoryTap: onCategoryTap,
              category: ECategories.islands,
            ),
            Category(
              title: 'Undergrounds',
              icon: Icons.landslide_rounded,
              onCategoryTap: onCategoryTap,
              category: ECategories.undergrounds,
            ),
            Category(
              title: 'Cliffs',
              icon: Icons.landslide_rounded,
              onCategoryTap: onCategoryTap,
              category: ECategories.cliffs,
            ),
            Category(
              title: 'Mines',
              icon: Icons.landslide_rounded,
              onCategoryTap: onCategoryTap,
              category: ECategories.mines,
            ),
            Category(
              title: 'Ruins',
              icon: Icons.flood_rounded,
              onCategoryTap: onCategoryTap,
              category: ECategories.ruins,
            ),
            Category(
              title: 'Forests',
              icon: Icons.forest_rounded,
              marginRight: 16,
              onCategoryTap: onCategoryTap,
              category: ECategories.forests,
            ),
          ],
        ),
      ),
    );
  }
}
