import 'package:flutter/material.dart';

import '../data/destinations_data.dart';
import '../models/destinations_model.dart';
import '../widgets/for_you.dart';

class Search extends StatefulWidget {
  static const routeName = '/search';

  final String searchQuery;

  const Search(this.searchQuery, {Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  late List<DestinationsModel> _destinations;

  List<DestinationsModel> _searchDestinations(query) {
    return destinationsData
        .where((destination) =>
            destination.title.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }

  @override
  void initState() {
    super.initState();
    _destinations = _searchDestinations(widget.searchQuery);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.searchQuery),
      ),
      body: Center(
        child: ForYou(
          destinations: _destinations,
        ),
      ),
    );
  }
}
