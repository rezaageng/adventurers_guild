import 'package:flutter/material.dart';

import '../models/destinations_model.dart';
import 'for_you_item.dart';

class ForYou extends StatelessWidget {
  final String? title;
  final List<DestinationsModel> destinations;

  const ForYou({Key? key, this.title, required this.destinations})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title != null
              ? Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  child: Text(
                    title as String,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                )
              : const SizedBox(),
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
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
        ],
      ),
    );
  }
}
