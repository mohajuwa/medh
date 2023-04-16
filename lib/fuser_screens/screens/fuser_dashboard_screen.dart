// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../widgets/fuser_reports.dart';
import '../widgets/fuser_upcoming_dashboard.dart';

class FuserDashboardScreen extends StatefulWidget {
  @override
  State<FuserDashboardScreen> createState() => _FuserDashboardScreenState();
}

class _FuserDashboardScreenState extends State<FuserDashboardScreen> {
  int _buttonIndex = 0;

  final clr = Color(0xFFF4F6FA);
  final clr1 = Color(0xFF7165D6);

  final _dashboardWidgets = [
    // Upcoming Widget
    UpcomingDashboard(),
    // Complated Widget
    FuserReports(),
    // Canceled Widget
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "لوحة التحكم",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: clr,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _buttonIndex = 0;
                      });
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                      decoration: BoxDecoration(
                        color: _buttonIndex == 0 ? clr1 : Colors.transparent,
                        borderRadius: BorderRadius.circular(19),
                      ),
                      child: Text(
                        "الطلبات",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color:
                              _buttonIndex == 0 ? Colors.white : Colors.black38,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _buttonIndex = 1;
                      });
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                      decoration: BoxDecoration(
                        color: _buttonIndex == 1 ? clr1 : Colors.transparent,
                        borderRadius: BorderRadius.circular(19),
                      ),
                      child: Text(
                        "تقارير",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color:
                              _buttonIndex == 1 ? Colors.white : Colors.black38,
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
            SizedBox(height: 30),
            _dashboardWidgets[_buttonIndex],
          ],
        ),
      ),
    );
  }
}
