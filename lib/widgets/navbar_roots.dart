// القائمة الثابتة لكل الصفحات للمستخدم العادي

// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medh/darkmod/theme.dart';
import 'package:medh/provider.dart';
import 'package:medh/screens/search_screen.dart';
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
    bool shadowColor = false;

    double? scrolledUnderElevation;

    const clr = Color(0xFF58329B);

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
        theme: getAppTheme(context, ref.watch(appThemeProvider)),
        debugShowCheckedModeBanner: false,
        home: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 60,
              scrolledUnderElevation: scrolledUnderElevation,
              shadowColor: shadowColor
                  ? Theme.of(context).colorScheme.shadow
                  : colors(context).color1,
              title: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 0, top: 2),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const NavBarRoots(),
                              ),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: colors(context).color4,
                              borderRadius: BorderRadius.circular(18),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0x1F000000),
                                  blurRadius: 4,
                                  spreadRadius: 2,
                                )
                              ],
                            ),
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(3),
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Center(
                                      child: Icon(
                                        Icons.switch_left_outlined,
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        " شعار البرنامج -->",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: colors(context).color4,
                          borderRadius: BorderRadius.circular(18),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x1F000000),
                              blurRadius: 4,
                              spreadRadius: 2,
                            )
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: const CircleAvatar(
                                radius: 15,
                                backgroundImage:
                                    AssetImage("assets/images/icon1.png"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            body: _screens[_selectedIndex],
            bottomNavigationBar: SizedBox(
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
    );
  }

  void onTapTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
