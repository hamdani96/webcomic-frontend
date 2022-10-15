import 'package:flutter/material.dart';
import 'package:webcomic/pages/home/explore_page.dart';
import 'package:webcomic/pages/home/home_page.dart';
import 'package:webcomic/pages/home/my_comic_page.dart';
import 'package:webcomic/pages/home/profile_page.dart';
import 'package:webcomic/theme.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget body() {
      switch (_selectedIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return ExplorePage();
          break;
        case 2:
          return MyComicPage();
          break;
        case 3:
          return ProfilePage();
          break;

        default:
          return HomePage();
      }
    }

    return Scaffold(
      body: body(),
      bottomNavigationBar: NavigationBar(
        backgroundColor: primaryColor,
        animationDuration: const Duration(seconds: 1),
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        destinations: _navBarItems,
      ),
    );
  }
}

const _navBarItems = [
  NavigationDestination(
    icon: Icon(
      Icons.home_outlined,
      color: Colors.white,
    ),
    selectedIcon: Icon(Icons.home_rounded),
    label: 'Beranda',
  ),
  NavigationDestination(
    icon: Icon(
      Icons.compass_calibration_outlined,
      color: Colors.white,
    ),
    selectedIcon: Icon(Icons.compass_calibration),
    label: 'Explore',
  ),
  NavigationDestination(
    icon: Icon(
      Icons.book_outlined,
      color: Colors.white,
    ),
    selectedIcon: Icon(Icons.book),
    label: 'My Comic',
  ),
  NavigationDestination(
    icon: Icon(
      Icons.person_outline_rounded,
      color: Colors.white,
    ),
    selectedIcon: Icon(Icons.person_rounded),
    label: 'Profile',
  ),
];
