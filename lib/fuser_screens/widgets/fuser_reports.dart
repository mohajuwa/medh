// صفحة التقارير للصيدلي
//  مضافه الى صفحة لوحة التحكم تحديداً زر التقارير في القائمة

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../widgets/fuser_upcoming_dashboard.dart';
import 'fuser_mreports.dart';
import 'fuser_yreports.dart';

class FuserReports extends StatefulWidget {
  @override
  State<FuserReports> createState() => _FuserReportsState();
}

class _FuserReportsState extends State<FuserReports> {
  int _buttonIndex = 0;

  final clr = Color(0xFFF4F6FA);
  final clr1 = Color(0xFF58329B);

  final _dashboardWidgets = [
    // عرض التقرير الشهري
    MonthelyReports(),

    // عرض التقرير السنوي
    YearlyReports(),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5),
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.symmetric(horizontal: 40),
              decoration: BoxDecoration(
                color: clr,
                borderRadius: BorderRadius.circular(30),
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
                          EdgeInsets.symmetric(vertical: 4, horizontal: 20),
                      decoration: BoxDecoration(
                        color: _buttonIndex == 0 ? clr1 : Colors.transparent,
                        borderRadius: BorderRadius.circular(19),
                      ),
                      child: Text(
                        " تقرير شهري",
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
                          EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                      decoration: BoxDecoration(
                        color: _buttonIndex == 1 ? clr1 : Colors.transparent,
                        borderRadius: BorderRadius.circular(19),
                      ),
                      child: Text(
                        "تقرير سنوي",
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
