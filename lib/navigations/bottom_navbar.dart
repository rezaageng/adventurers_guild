import 'package:flutter/material.dart';

import '../screens/explore.dart';
import '../screens/home.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  String get greetings {
    final now = DateTime.now().hour;
    if (now < 12) {
      return 'Good Morning';
    } else if (now < 18) {
      return 'Good Afternoon';
    } else {
      return 'Good Evening';
    }
  }

  List<Map<String, Object>> _screens = [];

  @override
  void initState() {
    super.initState();
    _screens = [
      {
        'title': greetings,
        'screen': const Home(),
      },
      {
        'title': 'Explore',
        'screen': const Explore(),
      },
    ];
  }

  int _screenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_screens[_screenIndex]['title'] as String),
      ),
      body: _screens[_screenIndex]['screen'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _screenIndex,
        onTap: (index) => setState(() => _screenIndex = index),
        enableFeedback: false,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: Theme.of(context).iconTheme.copyWith(
              color: Theme.of(context).colorScheme.secondary,
            ),
        items: const [
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.home_rounded),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.explore_rounded),
            icon: Icon(Icons.explore_outlined),
            label: 'Explore',
          ),
        ],
      ),
    );
  }
}
