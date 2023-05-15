// ID  -- >        2040737
import 'package:flutter/material.dart';
import 'package:medh/FUSER/Summary/Values/values.dart';
import 'package:medh/FUSER/Summary/Wedgits/daily_goal_card.dart';
import 'package:medh/FUSER/Summary/Wedgits/productivity_chart.dart';

class DashboardProductivity extends StatelessWidget {
  const DashboardProductivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const [
          DailyGoalCard(), // ID  -- >        2040722
          AppSpaces.verticalSpace20, // ID  -- >        2040704
          ProductivityChart(), // ID  -- >        2040724
        ],
      ),
    );
  }
}
