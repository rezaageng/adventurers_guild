import 'package:flutter/material.dart';

import '../models/destinations_model.dart';
import '../widgets/region.dart';

class Explore extends StatelessWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 240,
          childAspectRatio: 1,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        children: const [
          Region(
            title: ERegions.mondstadt,
            image: 'assets/images/wind_rise.png',
            color: Colors.teal,
          ),
          Region(
            title: ERegions.liyue,
            image: 'assets/images/qingyun_peak.png',
            color: Colors.amber,
          ),
          Region(
            title: ERegions.inazuma,
            image: 'assets/images/mt_yougou.png',
            color: Colors.purple,
          )
        ],
      ),
    );
  }
}
