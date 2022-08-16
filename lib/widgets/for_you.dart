import 'package:flutter/material.dart';

import '../models/destinations_model.dart';
import 'for_you_item.dart';

class ForYou extends StatelessWidget {
  final String? title;
  final List<DestinationsModel> destinations;
  final ScrollPhysics? physics;
  final bool shrinkWrap;

  const ForYou({
    Key? key,
    this.title,
    required this.destinations,
    this.physics = const BouncingScrollPhysics(),
    this.shrinkWrap = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: GridView.builder(
        physics: physics,
        shrinkWrap: shrinkWrap,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 240,
          childAspectRatio: 1,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemBuilder: ((context, index) =>
            ForYouItem(destination: destinations[index])),
        itemCount: destinations.length,
      ),
    );
  }
}
