import 'package:flutter/material.dart';

import '../models/destinations_model.dart';
import 'category.dart';

class Categories extends StatelessWidget {
  final Function onCategoryTap;
  final ECategories stateCategory;

  const Categories({
    Key? key,
    required this.onCategoryTap,
    required this.stateCategory,
  }) : super(key: key);

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
              stateCategory: stateCategory,
            ),
            Category(
              title: 'Montains',
              icon: Icons.landscape_rounded,
              onCategoryTap: onCategoryTap,
              category: ECategories.mountains,
              stateCategory: stateCategory,
            ),
            Category(
              title: 'Islands',
              icon: Icons.landscape_rounded,
              onCategoryTap: onCategoryTap,
              category: ECategories.islands,
              stateCategory: stateCategory,
            ),
            Category(
              title: 'Undergrounds',
              icon: Icons.landslide_rounded,
              onCategoryTap: onCategoryTap,
              category: ECategories.undergrounds,
              stateCategory: stateCategory,
            ),
            Category(
              title: 'Cliffs',
              icon: Icons.landslide_rounded,
              onCategoryTap: onCategoryTap,
              category: ECategories.cliffs,
              stateCategory: stateCategory,
            ),
            Category(
              title: 'Mines',
              icon: Icons.landslide_rounded,
              onCategoryTap: onCategoryTap,
              category: ECategories.mines,
              stateCategory: stateCategory,
            ),
            Category(
              title: 'Ruins',
              icon: Icons.flood_rounded,
              onCategoryTap: onCategoryTap,
              category: ECategories.ruins,
              stateCategory: stateCategory,
            ),
            Category(
              title: 'Forests',
              icon: Icons.forest_rounded,
              marginRight: 16,
              onCategoryTap: onCategoryTap,
              category: ECategories.forests,
              stateCategory: stateCategory,
            ),
          ],
        ),
      ),
    );
  }
}
