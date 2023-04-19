// صفحة التقرير السنوي للصيدلي
//  مضافه الى صفحة التقارير تحديداً زر التقرير السنوي في القائمة

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class YearlyReports extends StatefulWidget {
  const YearlyReports({super.key});

  @override
  State<YearlyReports> createState() => _YearlyReportsState();
}

class _YearlyReportsState extends State<YearlyReports> {
  DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat.yMMMEd().format(now);
    return SingleChildScrollView(
      child: ListBody(
        children: [
          Center(
            child: Container(
              margin:
                  const EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 3),
              child: Table(
                defaultColumnWidth: const FixedColumnWidth(70),
                border: TableBorder.all(
                    color: Colors.black, style: BorderStyle.solid, width: 2),
                children: [
                  TableRow(children: [
                    Column(children: const [
                      Text('تم طلبه ', style: TextStyle(fontSize: 14.0))
                    ]),
                    Column(children: const [
                      Text('عملاء', style: TextStyle(fontSize: 14.0))
                    ]),
                    Column(children: const [
                      Text('الدواء', style: TextStyle(fontSize: 14.0))
                    ]),
                    Column(children: const [
                      Text('الكمية', style: TextStyle(fontSize: 14.0))
                    ]),
                    Column(children: const [
                      Text('السعر', style: TextStyle(fontSize: 14.0))
                    ]),
                    Column(children: const [
                      Text('التاريخ', style: TextStyle(fontSize: 14.0))
                    ]),
                  ]),
                  TableRow(children: [
                    Column(children: const [Text('Javatpoint')]),
                    Column(children: const [Text('Flutter')]),
                    Column(children: const [Text('5*')]),
                    Column(children: const [Text('1*')]),
                    Column(children: const [Text('500*')]),
                    Column(children: [Text(formattedDate)]),
                  ]),
                  TableRow(children: [
                    Column(children: const [Text('Javatpoint')]),
                    Column(children: const [Text('Flutter')]),
                    Column(children: const [Text('5*')]),
                    Column(children: const [Text('1*')]),
                    Column(children: const [Text('500*')]),
                    Column(children: [Text(formattedDate)]),
                  ]),
                  TableRow(children: [
                    Column(children: const [Text('Javatpoint')]),
                    Column(children: const [Text('Flutter')]),
                    Column(children: const [Text('5*')]),
                    Column(children: const [Text('1*')]),
                    Column(children: const [Text('500*')]),
                    Column(children: [Text(formattedDate)]),
                  ]),
                  TableRow(children: [
                    Column(children: const [Text('Javatpoint')]),
                    Column(children: const [Text('Flutter')]),
                    Column(children: const [Text('5*')]),
                    Column(children: const [Text('1*')]),
                    Column(children: const [Text('500*')]),
                    Column(children: [Text(formattedDate)]),
                  ]),
                  TableRow(children: [
                    Column(children: const [Text('Javatpoint')]),
                    Column(children: const [Text('Flutter')]),
                    Column(children: const [Text('5*')]),
                    Column(children: const [Text('1*')]),
                    Column(children: const [Text('500*')]),
                    Column(children: [Text(formattedDate)]),
                  ]),
                  TableRow(children: [
                    Column(children: const [Text('Javatpoint')]),
                    Column(children: const [Text('Flutter')]),
                    Column(children: const [Text('5*')]),
                    Column(children: const [Text('1*')]),
                    Column(children: const [Text('500*')]),
                    Column(children: [Text(formattedDate)]),
                  ]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
