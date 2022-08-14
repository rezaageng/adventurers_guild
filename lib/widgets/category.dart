import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String title;
  final IconData icon;
  final double marginLeft;
  final double marginRight;

  const Category({
    Key? key,
    required this.title,
    required this.icon,
    this.marginLeft = 8,
    this.marginRight = 8,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: marginLeft, right: marginRight),
      child: Material(
        color: Theme.of(context).cardTheme.color,
        borderRadius: BorderRadius.circular(16),
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () {},
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
