import 'package:flutter/material.dart';

import '../models/destinations_model.dart';
import '../widgets/region_item.dart';

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
          RegionItem(
            region: ERegions.mondstadt,
            image: 'assets/images/wind_rise.png',
            color: Colors.teal,
          ),
          RegionItem(
            region: ERegions.liyue,
            image: 'assets/images/qingyun_peak.png',
            color: Colors.amber,
          ),
          RegionItem(
            region: ERegions.inazuma,
            image: 'assets/images/mt_yougou.png',
            color: Colors.purple,
          )
        ],
      ),
    );
  }
}
