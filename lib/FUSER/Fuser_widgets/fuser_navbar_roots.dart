// ID  -- >        2040712

// القائمة الثابتة لكل الصفحات للصيدلي

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medh/Theme/theme.dart';
import 'package:medh/provider.dart';

import '../screens/fuser_dashboard_screen.dart';
import '../screens/fuser_home_screen.dart';
import '../screens/medicines_screen.dart';
import '../screens/fuser_settings_screen.dart';

class FuserNavBarRoots extends ConsumerStatefulWidget {
  
  const FuserNavBarRoots({super.key});

  @override
  FuserNavBarRootsState createState() => FuserNavBarRootsState();
}

class FuserNavBarRootsState extends ConsumerState<FuserNavBarRoots> {
  int _currentIndex = 0;

  final _screens = [
    const FuserHomeScreen(), // ID  -- >        2040750

    FuserMedicineScreen(), //  ID  -- >        2040759

    const FuserDashboardScreen(), // ID  -- >        2040749

    const FuserSettingsScreen(), // ID  -- >        2040753
  ];
  double? scrolledUnderElevation;

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
        theme: getAppTheme(context, ref.watch(appThemeProvider)),
        debugShowCheckedModeBanner: false,
        home: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            // appBar: AppBar(
            //   toolbarHeight: 60,
            //   scrolledUnderElevation: scrolledUnderElevation,
            //   title: Center(
            //     child: Padding(
            //       padding: const EdgeInsets.symmetric(horizontal: 1),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           Padding(
            //             padding: const EdgeInsets.only(right: 0, top: 2),
            //             child: InkWell(
            //               onTap: () {
            //                 Navigator.push(
            //                   context,
            //                   MaterialPageRoute(
            //                     builder: (context) =>
            //                         const FuserNavBarRoots(), // ID  -- >        2040712
            //                   ),
            //                 );
            //               },
            //               child: Container(
            //                 padding: const EdgeInsets.all(5),
            //                 decoration: BoxDecoration(
            //                   color: colors(context).color4,
            //                   borderRadius: BorderRadius.circular(18),
            //                   boxShadow: const [
            //                     BoxShadow(
            //                       color: Color(0x47000000),
            //                       blurRadius: 1.5,
            //                       spreadRadius: 1,
            //                     )
            //                   ],
            //                 ),
            //                 child: Center(
            //                   child: Column(
            //                     crossAxisAlignment: CrossAxisAlignment.center,
            //                     children: [
            //                       Container(
            //                         padding: const EdgeInsets.all(3),
            //                         decoration: const BoxDecoration(
            //                           shape: BoxShape.circle,
            //                         ),
            //                         child: const Center(
            //                           child: Icon(
            //                             Icons.switch_left_outlined,
            //                             size: 30,
            //                           ),
            //                         ),
            //                       ),
            //                     ],
            //                   ),
            //                 ),
            //               ),
            //             ),
            //           ),
            //           Text(
            //             " شعار البرنامج -->",
            //             style: Theme.of(context).textTheme.bodyLarge,
            //           ),
            //           Container(
            //             padding: const EdgeInsets.all(8),
            //             decoration: BoxDecoration(
            //               color: colors(context).color4,
            //               borderRadius: BorderRadius.circular(18),
            //               boxShadow: const [
            //                 BoxShadow(
            //                   color: Color(0x47000000),
            //                   blurRadius: 1.5,
            //                   spreadRadius: 1,
            //                 )
            //               ],
            //             ),
            //             child: Column(
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               children: [
            //                 Container(
            //                   decoration: const BoxDecoration(
            //                     shape: BoxShape.circle,
            //                   ),
            //                   child: const CircleAvatar(
            //                     backgroundColor: Colors.transparent,
            //                     radius: 15,
            //                     backgroundImage:
            //                         AssetImage("assets/images/Logo.png"),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            body: _screens[_currentIndex],
            bottomNavigationBar: Container(
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
