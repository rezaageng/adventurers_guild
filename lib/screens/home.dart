import 'package:flutter/material.dart';

import '../widgets/search_bar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: const [SearchBar()],
      ),
    );
  }
}
