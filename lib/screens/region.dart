import 'package:flutter/material.dart';

import '../data/destinations_data.dart';
import '../models/destinations_model.dart';
import '../widgets/for_you.dart';

class Region extends StatelessWidget {
  static const routeName = '/region';

  const Region({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ERegions region =
        ModalRoute.of(context)!.settings.arguments as ERegions;

    final List<DestinationsModel> destinations = destinationsData
        .where((destination) => destination.region == region)
        .toList();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          enableFeedback: false,
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Region'),
      ),
      body: ForYou(destinations: destinations),
    );
  }
}
