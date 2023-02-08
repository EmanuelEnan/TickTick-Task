import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tick_tick_task/scrns/home_page.dart';

import 'record_page.dart';
import 'save_page.dart';
import 'search_page.dart';
import 'settings_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _index = 0;

  List pages = [
    const HomePage(),
    const SearchPage(),
    const RecordPage(),
    const SettingsPage(),
    const SavePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: FloatingNavbar(
        selectedItemColor: Colors.green,
        backgroundColor: Colors.white,
        unselectedItemColor: const Color.fromARGB(59, 113, 113, 113),
        onTap: (int val) {
          setState(() => _index = val);
        },
        currentIndex: _index,
        items: [
          FloatingNavbarItem(icon: Icons.home, title: 'Home'),
          FloatingNavbarItem(icon: Icons.search, title: 'Search'),
          FloatingNavbarItem(
              icon: Icons.emergency_recording_rounded, title: 'Record'),
          FloatingNavbarItem(icon: Icons.save_alt_rounded, title: 'Save'),
          FloatingNavbarItem(icon: Icons.settings, title: 'Settings'),
        ],
      ),
    );
  }
}
