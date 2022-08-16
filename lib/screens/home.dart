import 'package:flutter/material.dart';

import '../data/destinations_data.dart';
import '../models/destinations_model.dart';
import '../widgets/categories.dart';
import '../widgets/for_you.dart';
import '../widgets/search_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List<DestinationsModel> _destinations;
  late ECategories _category;

  List<DestinationsModel> _filterDestionations(
      List<DestinationsModel> destinations) {
    switch (_category) {
      case ECategories.all:
        return destinations;
      case ECategories.mountains:
        return destinations
            .where(
                (destination) => destination.category == ECategories.mountains)
            .toList();
      case ECategories.islands:
        return destinations
            .where((destination) => destination.category == ECategories.islands)
            .toList();
      case ECategories.undergrounds:
        return destinations
            .where((destination) =>
                destination.category == ECategories.undergrounds)
            .toList();
      case ECategories.forests:
        return destinations
            .where((destination) => destination.category == ECategories.forests)
            .toList();
      case ECategories.cliffs:
        return destinations
            .where((destination) => destination.category == ECategories.cliffs)
            .toList();
      case ECategories.mines:
        return destinations
            .where((destination) => destination.category == ECategories.mines)
            .toList();
      case ECategories.ruins:
        return destinations
            .where((destination) => destination.category == ECategories.ruins)
            .toList();
    }
  }

  @override
  void initState() {
    super.initState();
    _category = ECategories.all;
    _destinations = _filterDestionations(destinationsData);
  }

  void _onCategoryChanged(ECategories category) {
    setState(() {
      _category = category;
      _destinations = _filterDestionations(destinationsData);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        const SearchBar(),
        Categories(onCategoryTap: _onCategoryChanged, stateCategory: _category),
        ForYou(
          title: 'For You',
          destinations: _destinations,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
        ),
      ],
    );
  }
}
