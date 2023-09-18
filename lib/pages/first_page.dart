import 'package:flutter/material.dart';
import 'package:bottom_navigation_bar/pages/profile_page.dart';
import 'package:bottom_navigation_bar/pages/settings_page.dart';
import 'home_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List _pages = [
    HomePage(),
    ProfilePage(),
    SettingsPage(),
  ];
  int selectedIndex = 0;
  void _navigationBottomBar(int index){
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('BOTTOM NAVIGATION'),
        centerTitle: true,
      ),
      body: _pages[selectedIndex],
      backgroundColor: Colors.pinkAccent,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: _navigationBottomBar,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "HOME",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'PROFILE'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'SETTING'
          ),
        ],
      ),

    );
  }
}