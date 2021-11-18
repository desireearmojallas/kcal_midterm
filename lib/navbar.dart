import 'package:flutter/material.dart';
import 'package:kcal_midterm/nav_views/camera.dart';
import 'package:kcal_midterm/nav_views/favorites.dart';
import 'package:kcal_midterm/nav_views/home.dart';
import 'package:kcal_midterm/nav_views/user.dart';
import 'package:kcal_midterm/nav_views/search.dart';

class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Home(),
    Search(),
    Camera(),
    Favorites(),
    User(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red[500],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: const BoxDecoration(
                    color: Color(0xFF83AF7D), shape: BoxShape.circle),
                padding: const EdgeInsets.all(14),
                child: const Icon(Icons.camera_alt, color: Colors.white),
              ),
            ),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_rounded),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded),
            label: 'User',
          ),
        ],
        currentIndex: _selectedIndex, 
        onTap: _onItemTap,
      ),
    );
  }
}
