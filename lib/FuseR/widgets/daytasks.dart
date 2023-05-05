// صفحة التقارير للصيدلي
//  مضافه الى صفحة لوحة التحكم تحديداً زر التقارير في القائمة

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medh/Theme/theme.dart';
import '../Summary/Wedgits/daily_goal_card.dart';
import '../Summary/Wedgits/productivity_chart.dart';

class FuserDayTasks extends ConsumerStatefulWidget {
  const FuserDayTasks({super.key});

  @override
  FuserDayTasksState createState() => FuserDayTasksState();
}

class FuserDayTasksState extends ConsumerState<FuserDayTasks> {
  int _buttonIndex = 0;

  final _dashboardWidgets = [
    // عرض التقرير الشهري
    const DailyGoalCard(),

    // عرض التقرير السنوي
    const ProductivityChart(),
  ];

  @override
  Widget build(BuildContext context) {
    //  هذا عشان زر الرجوع

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
                  color: colors(context).color6,
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
                          color: _buttonIndex == 0
                              ? colors(context).color1
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(19),
                        ),
                        child: Text(
                          " مبيعات اليوم",
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
                        padding: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 20),
                        decoration: BoxDecoration(
                          color: _buttonIndex == 1
                              ? colors(context).color1
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(19),
                        ),
                        child: Text(
                          "مبيعات الإسبوع",
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
        ),
      ),
    );
  }
}
