import 'package:flutter/material.dart';

import '../widgets/fuser_reports.dart';
import '../widgets/fuser_upcoming_dashboard.dart';

class FuserDashboardScreen extends StatefulWidget {
  const FuserDashboardScreen({super.key});

  @override
  State<FuserDashboardScreen> createState() => _FuserDashboardScreenState();
}

class _FuserDashboardScreenState extends State<FuserDashboardScreen> {
  int _currentIndex = 0;

  final clr = const Color(0xFFF4F6FA);
  final clr1 = const Color(0xFF58329B);

  final _dashboardWidgets = [
    // Upcoming Widget
    const UpcomingDashboard(),
    // Complated Widget
    const FuserReports(),
    // Canceled Widget
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    //  هذا عشان زر الرجوع

    return WillPopScope(
      onWillPop: () async => true,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
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
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: clr,
                  borderRadius: BorderRadius.circular(10),
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
                          color: _currentIndex == 0 ? clr1 : Colors.transparent,
                          borderRadius: BorderRadius.circular(19),
                        ),
                        child: Text(
                          "الطلبات",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: _currentIndex == 0
                                ? Colors.white
                                : Colors.black38,
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
                          color: _currentIndex == 1 ? clr1 : Colors.transparent,
                          borderRadius: BorderRadius.circular(19),
                        ),
                        child: Text(
                          "تقارير",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: _currentIndex == 1
                                ? Colors.white
                                : Colors.black38,
                          ),
                        ),
                      ),
                    ),
                    // InkWell(
                    //   onTap: () {
                    //     setState(() {
                    //       _buttonIndex = 2;
                    //     });
                    //   },
                    //   child: Container(
                    //     padding:
                    //         EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                    //     decoration: BoxDecoration(
                    //       color: _buttonIndex == 2 ? clr1 : Colors.transparent,
                    //       borderRadius: BorderRadius.circular(19),
                    //     ),
                    //     child: Text(
                    //       "ملغية",
                    //       style: TextStyle(
                    //         fontSize: 16,
                    //         fontWeight: FontWeight.w500,
                    //         color:
                    //             _buttonIndex == 2 ? Colors.white : Colors.black38,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              _dashboardWidgets[_currentIndex],
            ],
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
