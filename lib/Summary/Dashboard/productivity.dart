import 'package:flutter/material.dart';
import 'package:medh/Summary/Values/values.dart';
import 'package:medh/Summary/Wedgits/daily_goal_card.dart';
import 'package:medh/Summary/Wedgits/productivity_chart.dart';

class DashboardProductivity extends StatelessWidget {
  const DashboardProductivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DailyGoalCard(),
        AppSpaces.verticalSpace20,
        ProductivityChart()
      ],
    );
  }
}
