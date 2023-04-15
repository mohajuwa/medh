// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:medh/screens/appointm2_screen.dart';

import '../widgets/best_price_dashboard.dart';
import '../widgets/neares_km_dashboard.dart';
import '../widgets/upcoming_dashboard.dart';

class DashboardScreen extends StatefulWidget {
  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _buttonIndex = 0;

  final clr = Color(0xFFF4F6FA);
  final clr1 = Color(0xFF7165D6);

  final _dashboardWidgets = [
    // Upcoming Widget
    UpcomingDashboard(),
    // Complated Widget
    BestPriceSample(),
    // Canceled Widget
    NearestKmDashboard(),
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
                mainAxisAlignment: MainAxisAlignment.center,
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
                        "نتائج الإستعلام",
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
                        " افضل سعر",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color:
                              _buttonIndex == 1 ? Colors.white : Colors.black38,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _buttonIndex = 2;
                      });
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                      decoration: BoxDecoration(
                        color: _buttonIndex == 2 ? clr1 : Colors.transparent,
                        borderRadius: BorderRadius.circular(19),
                      ),
                      child: Text(
                        "اقرب رد",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color:
                              _buttonIndex == 2 ? Colors.white : Colors.black38,
                        ),
                      ),
                    ),
                  ),
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
