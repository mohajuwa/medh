// القائمة الثابتة لكل الصفحات للمستخدم العادي

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:medh/screens/search_screen.dart';
import '../screens/dashboard_screen.dart';
import '../screens/home_screen.dart';
import '../screens/settings_screen.dart';

class NavBarRoots extends StatefulWidget {
  const NavBarRoots({super.key});

  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}

class _NavBarRootsState extends State<NavBarRoots> {
  int _selectedIndex = 0;
  final _screens = [
    // Home Screen يا نقيب
    const HomeScreen(),
    // Messages Screen
    const MessagesScreen(),
    // Schedule Screen
    const DashboardScreen(),
    // Settings Screen

    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_selectedIndex == 0) {
          return true;
        }
        setState(() {
          _selectedIndex = 0;
        });
        return false;
      },
      child: MaterialApp(
        theme: ThemeData(fontFamily: 'El_Messiri'),
        debugShowCheckedModeBanner: false,
        home: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            backgroundColor: Colors.white,
            body: _screens[_selectedIndex],
            bottomNavigationBar: SizedBox(
              height: 80,
              child: BottomNavigationBar(
                backgroundColor: Colors.white,
                type: BottomNavigationBarType.fixed,
                selectedItemColor: const Color(0xFF58329B),
                unselectedItemColor: Colors.black26,
                selectedLabelStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
                currentIndex: _selectedIndex,
                onTap: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                items: const [
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
      ),
    );
  }
}
