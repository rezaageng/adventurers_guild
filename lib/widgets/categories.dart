import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  Widget _buildCategory(
      BuildContext context, String title, IconData icon, List<double> margin) {
    return Container(
      margin: EdgeInsets.only(left: margin[0], right: margin[1]),
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

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _buildCategory(
                context, 'Mountains', Icons.landscape_rounded, [16, 8]),
            _buildCategory(
                context, 'Beaches', Icons.beach_access_rounded, [8, 8]),
            _buildCategory(
                context, 'Undergrounds', Icons.landslide_rounded, [8, 8]),
            _buildCategory(context, 'Forests', Icons.forest_rounded, [8, 16]),
          ],
        ),
      ),
    );
  }
}
