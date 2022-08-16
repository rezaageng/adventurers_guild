import 'package:flutter/material.dart';

import '../helpers/helpers.dart';
import '../models/destinations_model.dart';

class RegionItem extends StatelessWidget {
  final ERegions title;
  final String image;
  final MaterialColor color;

  const RegionItem({
    Key? key,
    required this.title,
    required this.image,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      margin: EdgeInsets.zero,
      elevation: 0,
      child: LayoutBuilder(
        builder: (context, constraints) => Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: AspectRatio(
                aspectRatio: 1,
                child: Image.asset(
                  image,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      color.withOpacity(1),
                      color.withOpacity(0.5),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              width: constraints.maxWidth,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  Helpers.capitalize(title.name),
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                        color: Colors.white,
                      ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(enableFeedback: false, onTap: () => {}),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
