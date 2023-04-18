// القائمة الثابتة لكل الصفحات للصيدلي
// ignore_for_file: prefer_const_constructors, unused_field, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../screens/fuser_dashboard_screen.dart';
import '../screens/fuser_home_screen.dart';
import '../screens/medicines_screen.dart';
import '../screens/fuser_settings_screen.dart';

class FuserNavBarRoots extends StatefulWidget {
  @override
  State<FuserNavBarRoots> createState() => _FuserNavBarRootsState();
}

class _FuserNavBarRootsState extends State<FuserNavBarRoots> {
  int _selectedIndex = 0;
  final _screens = [
    // Home Screen يا نقيب
    FuserHomeScreen(),
    // Messages Screen
    FuserMedicineScreen(),
    // Schedule Screen
    FuserDashboardScreen(),
    // Settings Screen

    FuserSettingsScreen(),
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
              selectedItemColor: Color(0xFF58329B),
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
                  icon: Icon(CupertinoIcons.add_circled_solid),
                  label: "الأدوية",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.dashboard_customize),
                  label: "لوحة التحكم",
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
