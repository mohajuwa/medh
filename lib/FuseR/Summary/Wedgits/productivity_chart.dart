// ID  -- >        2040724
import 'package:flutter/material.dart';
import 'package:medh/Theme/theme.dart';
import 'package:sizer/sizer.dart';

import 'bar_chart.dart';

class ProductivityChart extends StatelessWidget {
  const ProductivityChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: 40.h,
          padding: const EdgeInsets.all(20.0),
          height: 23.h,
          decoration: BoxDecoration(
            color: colors(context).color4,
            borderRadius: BorderRadius.circular(18),
            boxShadow: const [
              BoxShadow(
                color: Color(0xAD000000),
                blurRadius: 1.5,
                spreadRadius: 1,
              )
            ],
          ),
          child: BarChartSample1()),
    );
  }
}
