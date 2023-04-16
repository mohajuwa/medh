// ignore_for_file: prefer_const_constructors, unused_field, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:medh/screens/messages_screen.dart';
import '../screens/dashboard_screen.dart';
import '../screens/home_screen.dart';
import '../screens/settings_screen.dart';

class NavBarRoots extends StatefulWidget {
  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}

class _NavBarRootsState extends State<NavBarRoots> {
  int _selectedIndex = 0;
  final _screens = [
    // Home Screen يا نقيب
    HomeScreen(),
    // Messages Screen
    MessagesScreen(),
    // Schedule Screen
    DashboardScreen(),
    // Settings Screen

    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'El_Messiri'),
      debugShowCheckedModeBanner: false,
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: _screens[_selectedIndex],
          bottomNavigationBar: Container(
            height: 80,
            child: BottomNavigationBar(
              backgroundColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Color(0xFF7165D6),
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
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled),
                  label: "الرئيسية",
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.search),
                  label: "إستعلام",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.notification_add_outlined),
                  label: "لوحة الإشعارت",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: "إعدادات",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
