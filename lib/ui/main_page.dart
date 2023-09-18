import 'package:flutter/material.dart';
import 'package:travel_olimp/ui/land/land_screen.dart';
import 'package:travel_olimp/ui/map/map_screen.dart';
import 'package:travel_olimp/ui/profile/profile.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          backgroundColor: const Color.fromARGB(255, 113, 255, 161),
          selectedIndex: currentPageIndex,
          destinations: const <Widget>[
            NavigationDestination(
              selectedIcon: Icon(
                Icons.star,
                color: Colors.black,
              ),
              icon: Icon(
                Icons.star_outlined,
                color: Colors.white,
              ),
              label: '',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.chat,
                color: Colors.black,
              ),
              icon: Icon(
                Icons.chat_outlined,
                color: Colors.white,
              ),
              label: '',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.account_circle,
                color: Colors.black,
              ),
              icon: Icon(
                Icons.account_circle_outlined,
                color: Colors.white,
              ),
              label: '',
            )
          ],
        ),
        body: <Widget>[
          const LandPage(),
          const MapPage(),
          const ProfilePage(),
        ][currentPageIndex]);
  }
}
