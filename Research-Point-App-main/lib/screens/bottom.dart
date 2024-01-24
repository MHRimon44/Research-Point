import 'package:flutter/material.dart';
import 'package:researchcore/screens/profile.dart';

import '../utils/theme_util.dart';
import 'about_screen.dart';
import 'downloads_screen.dart';
import 'favorite_screen.dart';
import 'home_screen.dart';

class BottomPage extends StatefulWidget {
  const BottomPage({super.key});

  @override
  State<BottomPage> createState() => _BottomPageState();
}

class _BottomPageState extends State<BottomPage> {
  final _pages = [
    const HomeScreen(),
    const FavoriteScreen(),
    const DownloadsScreen(),
    const ProfilePage(),
    const AboutScreen(),
  ];

  var _selectedPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _pages[_selectedPageIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPageIndex,
        selectedItemColor: ThemeUtil.secondaryColor,
        showUnselectedLabels: true,
        iconSize: 24.0,
        elevation: 16.0,
        onTap: (int index) {
          setState(() {
            _selectedPageIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Favorites',
            icon: Icon(
              Icons.favorite,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Downloads',
            icon: Icon(
              Icons.cloud_download_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(
              Icons.person,
            ),
          ),
          BottomNavigationBarItem(
            label: 'About',
            icon: Icon(
              Icons.info,
            ),
          ),
        ],
      ),
    );
  }
}
