// ID  -- >        2040749
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medh/FUSER/Summary/Dashboard/overview.dart';
import 'package:medh/Theme/theme.dart';
import 'package:medh/Values/values.dart';

import '../Fuser_widgets/daytasks.dart';
import '../Fuser_widgets/fuser_reports.dart';
import '../Fuser_widgets/fuser_upcoming_dashboard.dart';

class FuserDashboardScreen extends ConsumerStatefulWidget {
  const FuserDashboardScreen({Key? key}) : super(key: key);

  @override
  FuserDashboardScreenState createState() => FuserDashboardScreenState();
}

class FuserDashboardScreenState extends ConsumerState<FuserDashboardScreen> {
  int _currentIndex = 0;

  final _dashboardWidgets = [
    const FuserUpcomingDashboard(), // ID  -- >        2040714

    const FuserReports(), // ID  -- >        2040713

    const DashboardOverview(), // ID  -- >        2040738

    const FuserDayTasks(), // ID  -- >        2040717
  ];

  @override
  Widget build(BuildContext context) {
    //  هذا عشان زر الرجوع

    return SafeArea(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 200),
                  child: Text(
                    "لوحة التحكم",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppSpaces.verticalSpace20,
                    Container(
                      width: 350,
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      decoration: BoxDecoration(
                        color: colors(context).color6,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                _currentIndex = 0;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              decoration: BoxDecoration(
                                color: _currentIndex == 0
                                    ? colors(context).color1
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(20),
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
                                  vertical: 10, horizontal: 10),
                              decoration: BoxDecoration(
                                color: _currentIndex == 1
                                    ? colors(context).color1
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(20),
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
                                  vertical: 10, horizontal: 10),
                              decoration: BoxDecoration(
                                color: _currentIndex == 2
                                    ? colors(context).color1
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(20),
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
                          TextButton(
                            onPressed: () {
                              setState(() {
                                _currentIndex = 3;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 20),
                              decoration: BoxDecoration(
                                color: _currentIndex == 3
                                    ? colors(context).color1
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                "مبيعات",
                                style: TextStyle(
                                  fontFamily: 'El_Messiri',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: _currentIndex == 3
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
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onTapTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
