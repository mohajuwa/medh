import 'package:flutter/material.dart';

import 'bar_chart.dart';

class ProductivityChart extends StatelessWidget {
  const ProductivityChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 400,
        padding: const EdgeInsets.all(20.0),
        height: 220,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          boxShadow: const [
            BoxShadow(
              color: Color(0xAD000000),
              blurRadius: 4,
              spreadRadius: 2,
            )
          ],
          color: const Color(0xF7322C2C),
        ),
        child: BarChartSample1());
  }
}
