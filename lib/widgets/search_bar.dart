import 'package:flutter/material.dart';

import '../screens/search.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final _searchController = TextEditingController();

  void _naviagteToSearch(BuildContext context) {
    if (_searchController.text.isNotEmpty) {
      Navigator.pushNamed(context, Search.routeName,
          arguments: _searchController.text);
      FocusScope.of(context).unfocus();
      _searchController.clear();
    } else {
      return;
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Column(
        children: [
          Text(
            'Where do you want to go?',
            style: Theme.of(context).textTheme.headline4,
          ),
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: TextField(
              controller: _searchController,
              onSubmitted: (value) => _naviagteToSearch(context),
              decoration: InputDecoration(
                hintText: 'Search',
                filled: true,
                fillColor: Theme.of(context).cardTheme.color,
                suffixIcon: TextButton(
                  onPressed: () => _naviagteToSearch(context),
                  style: TextButton.styleFrom(
                      splashFactory: NoSplash.splashFactory),
                  child: Icon(Icons.search_rounded,
                      color: Theme.of(context).colorScheme.secondary),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
