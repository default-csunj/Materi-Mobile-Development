import 'package:flutter/material.dart';
import 'package:materi/UI/Pertemuan3/drawer.dart';
import 'package:materi/UI/Pertemuan3/pages/leaves.dart';
import 'package:materi/UI/Pertemuan3/pages/cats.dart';
import 'package:materi/UI/Pertemuan3/pages/sunset.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int navIndex = 0;

  List<Widget> _pages = [
    CatPage(),
    SunsetPage(),
    LeavesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[navIndex],
      drawer: DrawerPage(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Container(),
            label: 'Cats',
          ),
          BottomNavigationBarItem(
            icon: Container(),
            label: 'Sunset',
          ),
          BottomNavigationBarItem(
            icon: Container(),
            label: 'Leaves',
          ),
        ],
        onTap: (index) {
          setState(() {
            navIndex = index;
          });
        },
        elevation: 8,
        currentIndex: navIndex,
        selectedItemColor: Colors.purple.shade900,
        unselectedItemColor: Colors.grey.shade400,
        selectedFontSize: 18,
        unselectedFontSize: 12,
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
