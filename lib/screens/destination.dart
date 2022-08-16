import 'package:flutter/material.dart';

import '../helpers/helpers.dart';
import '../models/destinations_model.dart';

class Destination extends StatelessWidget {
  static const String routeName = '/destination';

  const Destination({Key? key}) : super(key: key);

  Widget _buildDetail(BuildContext context, IconData icon, String title) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Theme.of(context).colorScheme.secondary,
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          const SizedBox(width: 8),
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final destination =
        ModalRoute.of(context)!.settings.arguments as DestinationsModel;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          enableFeedback: false,
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(destination.title),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: AspectRatio(
              aspectRatio: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  destination.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      destination.title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(
                      Helpers.capitalize(destination.region.name),
                      style: Theme.of(context).textTheme.subtitle2,
                    )
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    _buildDetail(
                      context,
                      Icons.category,
                      Helpers.capitalize(destination.category.name),
                    ),
                    const SizedBox(width: 12),
                    _buildDetail(
                      context,
                      Icons.timelapse_rounded,
                      Helpers.toHours(destination.duration),
                    )
                  ],
                ),
                const SizedBox(height: 16),
                Text(
                  destination.description,
                  style: Theme.of(context).textTheme.caption,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
