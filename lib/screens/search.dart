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
  final _searchController = TextEditingController();

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

  void _onSearch(query) {
    setState(() {
      _destinations = _searchDestinations(query);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (_) => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: SizedBox(
            height: 36,
            child: TextField(
              controller: _searchController,
              onSubmitted: (_) => _onSearch(_searchController.text),
              decoration: InputDecoration(
                isDense: true,
                contentPadding: const EdgeInsets.all(8),
                hintText: 'Search',
                filled: true,
                fillColor: Theme.of(context).cardTheme.color,
                suffixIcon: TextButton(
                  onPressed: () => _onSearch(_searchController.text),
                  style: TextButton.styleFrom(
                      splashFactory: NoSplash.splashFactory),
                  child: Icon(Icons.search_rounded,
                      color: Theme.of(context).colorScheme.secondary),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          centerTitle: true,
        ),
        body: _destinations.isNotEmpty
            ? ForYou(
                destinations: _destinations,
              )
            : const Center(
                child: Text('Destinations not found 🥲'),
              ),
      ),
    );
  }
}
