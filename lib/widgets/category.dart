import 'package:flutter/material.dart';
import '../models/destinations_model.dart';

class Category extends StatelessWidget {
  final String title;
  final IconData icon;
  final double marginLeft;
  final double marginRight;
  final Function onCategoryTap;
  final ECategories category;
  final ECategories stateCategory;

  const Category({
    Key? key,
    required this.title,
    required this.icon,
    this.marginLeft = 8,
    this.marginRight = 8,
    required this.onCategoryTap,
    required this.category,
    required this.stateCategory,
  }) : super(key: key);

  Color _getcolor(BuildContext context) {
    if (stateCategory == category) {
      return Theme.of(context).colorScheme.secondary;
    } else {
      return Theme.of(context).cardTheme.color as Color;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: marginLeft, right: marginRight),
      child: Material(
        color: _getcolor(context),
        borderRadius: BorderRadius.circular(16),
        child: InkWell(
          enableFeedback: false,
          borderRadius: BorderRadius.circular(16),
          onTap: (() => onCategoryTap(category)),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Icon(icon),
                const SizedBox(width: 8),
                Text(title),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
