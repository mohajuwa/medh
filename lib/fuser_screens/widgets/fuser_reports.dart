// صفحة التقارير للصيدلي
//  مضافه الى صفحة لوحة التحكم تحديداً زر التقارير في القائمة

import 'package:flutter/material.dart';
import 'fuser_mreports.dart';
import 'fuser_yreports.dart';

class FuserReports extends StatefulWidget {
  const FuserReports({super.key});

  @override
  State<FuserReports> createState() => _FuserReportsState();
}

class _FuserReportsState extends State<FuserReports> {
  int _buttonIndex = 0;

  final clr = const Color(0xFFF4F6FA);
  final clr1 = const Color(0xFF58329B);

  final _dashboardWidgets = [
    // عرض التقرير الشهري
    const MonthelyReports(),

    // عرض التقرير السنوي
    const YearlyReports(),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => true,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 5),
              Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.symmetric(horizontal: 40),
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
                        padding: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 20),
                        decoration: BoxDecoration(
                          color: _buttonIndex == 0 ? clr1 : Colors.transparent,
                          borderRadius: BorderRadius.circular(19),
                        ),
                        child: Text(
                          " تقرير شهري",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: _buttonIndex == 0
                                ? Colors.white
                                : Colors.black38,
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
                        padding: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 20),
                        decoration: BoxDecoration(
                          color: _buttonIndex == 1 ? clr1 : Colors.transparent,
                          borderRadius: BorderRadius.circular(19),
                        ),
                        child: Text(
                          "تقرير سنوي",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: _buttonIndex == 1
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
              _dashboardWidgets[_buttonIndex],
            ],
          ),
        ),
      ),
    );
  }
}
