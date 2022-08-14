import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

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
              decoration: InputDecoration(
                hintText: 'Search',
                filled: true,
                fillColor: Theme.of(context).cardTheme.color,
                suffixIcon: TextButton(
                  onPressed: () {},
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
