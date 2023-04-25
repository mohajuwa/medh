// القائمة الثابتة لكل الصفحات للصيدلي

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../screens/fuser_dashboard_screen.dart';
import '../screens/fuser_home_screen.dart';
import '../screens/medicines_screen.dart';
import '../screens/fuser_settings_screen.dart';

class FuserNavBarRoots extends StatefulWidget {
  const FuserNavBarRoots({super.key});

  @override
  State<FuserNavBarRoots> createState() => _FuserNavBarRootsState();
}

class _FuserNavBarRootsState extends State<FuserNavBarRoots> {
  int _currentIndex = 0;

  final _screens = [
    // Home Screen يا نقيب
    const FuserHomeScreen(),
    // Messages Screen
    const FuserMedicineScreen(),
    // Schedule Screen
    const FuserDashboardScreen(),
    // Settings Screen

    const FuserSettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    //  هذا عشان زر الرجوع

    return WillPopScope(
      onWillPop: () async {
        if (_currentIndex == 0) {
          return true;
        }
        setState(() {
          _currentIndex = 0;
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
            body: _screens[_currentIndex],
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
                onTap: onTapTapped,
                currentIndex: _currentIndex,
                items: const [
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
      ),
    );
  }

  void onTapTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
