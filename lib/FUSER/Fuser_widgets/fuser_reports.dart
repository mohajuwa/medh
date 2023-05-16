// ID  -- >        2040713
// صفحة التقارير للصيدلي
//  مضافه الى صفحة لوحة التحكم تحديداً زر التقارير في القائمة

import 'package:flutter/material.dart';
import 'package:medh/Theme/theme.dart';
import 'fuser_mreports.dart';
import 'fuser_yreports.dart';

class FuserReports extends StatefulWidget {
  const FuserReports({super.key});

  @override
  State<FuserReports> createState() => _FuserReportsState();
}

class _FuserReportsState extends State<FuserReports> {
  int _buttonIndex = 0;

  final _dashboardWidgets = [
    // عرض التقرير الشهري
    const DayReports(), // ID  -- >        2040716

    // عرض التقرير السنوي
    const YearlyReports(), // ID  -- >        2040715
  ];

  @override
  Widget build(BuildContext context) {
    //  هذا عشان زر الرجوع

    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 5),
          Container(
            width: 300,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: colors(context).color6,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      _buttonIndex = 0;
                    });
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
                    decoration: BoxDecoration(
                      color: _buttonIndex == 0
                          ? colors(context).color1
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(19),
                    ),
                    child: Text(
                      " تقرير يومي",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: _buttonIndex == 0
                            ? Colors.white
                            : colors(context).color3,
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
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
                    decoration: BoxDecoration(
                      color: _buttonIndex == 1
                          ? colors(context).color1
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(19),
                    ),
                    child: Text(
                      "تقرير سنوي",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: _buttonIndex == 1
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
          _dashboardWidgets[_buttonIndex],
        ],
      ),
    );
  }
}
