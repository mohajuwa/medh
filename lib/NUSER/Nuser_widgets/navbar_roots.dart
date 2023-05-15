// ID  -- >    2040681
// القائمة الثابتة لكل الصفحات للمستخدم العادي

// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medh/Theme/theme.dart';
import 'package:medh/provider.dart';
import 'package:medh/NUSER/screens/search_screen.dart';
import '../screens/dashboard_screen.dart';
import '../screens/home_screen.dart';
import '../screens/settings_screen.dart';

class NavBarRoots extends ConsumerStatefulWidget {
  const NavBarRoots({super.key});

  @override
  NavBarRootsState createState() => NavBarRootsState();
}

class NavBarRootsState extends ConsumerState<NavBarRoots> {
  int _selectedIndex = 0;
  final _screens = [
    const HomeScreen(), // ID  -- >    2040682

    SearchScreen(), // ID  -- >    2040683

    const DashboardScreen(), // ID  -- >    2040684

    const SettingsScreen(), // ID  -- >    2040685
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_selectedIndex == 0) {
          return false;
        }
        setState(() {
          _selectedIndex = 0;
        });
        return false;
      },
      child: MaterialApp(
        theme: getAppTheme(context, ref.watch(appThemeProvider)),
        debugShowCheckedModeBanner: false,
        home: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            body: _screens[_selectedIndex],
            bottomNavigationBar: SizedBox(
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: colors(context).color4,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x47000000),
                      blurRadius: 1.5,
                      spreadRadius: 1,
                    )
                  ],
                ),
                child: BottomNavigationBar(
                  backgroundColor: colors(context).color4,
                  type: BottomNavigationBarType.fixed,
                  selectedItemColor: colors(context).color1,
                  unselectedItemColor: colors(context).color3,
                  unselectedLabelStyle: const TextStyle(
                    fontFamily: 'El_Messiri',
                  ),
                  onTap: onTapTapped,
                  currentIndex: _selectedIndex,
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home_filled,
                      ),
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
      ),
    );
  }

  void onTapTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
