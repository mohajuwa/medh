// القائمة الثابتة لكل الصفحات للصيدلي

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../widgets/navbar_roots.dart';
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
  bool shadowColor = false;
  double? scrolledUnderElevation;

  @override
  Widget build(BuildContext context) {
    const clr = Color(0xFF58329B);
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
            appBar: AppBar(
              toolbarHeight: 60,
              scrolledUnderElevation: scrolledUnderElevation,
              shadowColor:
                  shadowColor ? Theme.of(context).colorScheme.shadow : clr,
              backgroundColor: Colors.white,
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
                                builder: (context) => const FuserNavBarRoots(),
                              ),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0x1F000000),
                                  blurRadius: 1.5,
                                  spreadRadius: 1,
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
                                        color: Color(0xFF58329B),
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
                      const Text(
                        " شعار البرنامج -->",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontFamily: "Amiri_Quran",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
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
            body: _screens[_currentIndex],
            bottomNavigationBar: SizedBox(
              height: 80,
              child: BottomNavigationBar(
                backgroundColor: Colors.white,
                type: BottomNavigationBarType.fixed,
                selectedItemColor: const Color(0xFF58329B),
                unselectedItemColor: Colors.black26,
                selectedLabelStyle: const TextStyle(
                  fontWeight: FontWeight.w500,
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
