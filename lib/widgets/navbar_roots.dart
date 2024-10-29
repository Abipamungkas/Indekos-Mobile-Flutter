import 'package:flutter/material.dart';
import 'package:myapp/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:myapp/screens/messages_screen.dart';
import 'package:myapp/screens/saved_screen.dart';
import 'package:myapp/screens/settings_screen.dart';

class NavBarRoots extends StatefulWidget {
  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}

class _NavBarRootsState extends State<NavBarRoots> {

// Suggested code may be subject to a license. Learn more: ~LicenseLog:3724212975.
  int _selectedIndex = 0;
  final _screens = [
    // Home Screen
    HomeScreen(),
    // Messages Screen
    MessagesScreen(),
    //Saved Screen
    SavedScreen(),
    // Settings Screen
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.brown[400],
          unselectedItemColor: Colors.black26,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });

          },
          items: [
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2454073702.
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chat_bubble_text_fill),
              label: "Messages",
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.bookmark_fill),
              label: "Saved",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}

