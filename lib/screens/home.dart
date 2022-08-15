import 'package:flutter/material.dart';

import '../data/destinations_data.dart';
import '../widgets/categories.dart';
import '../widgets/for_you.dart';
import '../widgets/search_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        const SearchBar(),
        const Categories(),
        ForYou(title: 'For You', destinations: destinationsData),
      ],
    );
  }
}
