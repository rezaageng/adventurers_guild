import 'package:flutter/material.dart';

import 'navigations/bottom_navbar.dart';
import 'screens/destination.dart';
import 'screens/region.dart';
import 'screens/search.dart';
import 'theme/dark_theme.dart';
import 'theme/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Adventurers\' Guild',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      routes: {
        '/': (context) => const BottomNavbar(),
        Destination.routeName: (context) => const Destination(),
        Search.routeName: (context) =>
            Search(ModalRoute.of(context)!.settings.arguments as String),
        Region.routeName: (context) => const Region(),
      },
    );
  }
}
