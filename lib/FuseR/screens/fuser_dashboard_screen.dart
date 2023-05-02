import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medh/FuseR/Summary/Dashboard/overview.dart';
import 'package:medh/FuseR/Summary/Dashboard/overview_task_container.dart';
import 'package:medh/Theme/theme.dart';
import 'package:medh/provider.dart';

import '../widgets/fuser_reports.dart';
import '../widgets/fuser_upcoming_dashboard.dart';

class FuserDashboardScreen extends ConsumerStatefulWidget {
  const FuserDashboardScreen({Key? key}) : super(key: key);

  @override
  FuserDashboardScreenState createState() => FuserDashboardScreenState();
}

class FuserDashboardScreenState extends ConsumerState<FuserDashboardScreen> {
  int _currentIndex = 0;

  final clr = const Color(0xFFF4F6FA);
  final clr1 = const Color(0xFF58329B);

  final _dashboardWidgets = [
    // Upcoming Widget
    const FuserUpcomingDashboard(),
    // Complated Widget
    const FuserReports(),
    // Canceled Widget
    const DashboardOverview()
  ];

  @override
  Widget build(BuildContext context) {
    //  هذا عشان زر الرجوع

    return WillPopScope(
      onWillPop: () async => true,
      child: MaterialApp(
        theme: getAppTheme(context, ref.watch(appThemeProvider)),
        debugShowCheckedModeBanner: false,
        home: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            body: ListView(
              children: [
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "لوحة التحكم",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        padding: const EdgeInsets.all(2),
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: colors(context).color6,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  _currentIndex = 0;
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 20),
                                decoration: BoxDecoration(
                                  color: _currentIndex == 0
                                      ? colors(context).color1
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(19),
                                ),
                                child: Text(
                                  "الطلبات",
                                  style: TextStyle(
                                    fontFamily: 'El_Messiri',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: _currentIndex == 0
                                        ? Colors.white
                                        : colors(context).color3,
                                  ),
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  _currentIndex = 1;
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 25),
                                decoration: BoxDecoration(
                                  color: _currentIndex == 1
                                      ? colors(context).color1
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(19),
                                ),
                                child: Text(
                                  "تقارير",
                                  style: TextStyle(
                                    fontFamily: 'El_Messiri',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: _currentIndex == 1
                                        ? Colors.white
                                        : colors(context).color3,
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  _currentIndex = 2;
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 25),
                                decoration: BoxDecoration(
                                  color: _currentIndex == 2
                                      ? colors(context).color1
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(19),
                                ),
                                child: Text(
                                  "ملخص",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: _currentIndex == 2
                                        ? Colors.white
                                        : colors(context).color3,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      _dashboardWidgets[_currentIndex],
                    ],
                  ),
                ),
              ],
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
