// صفحة التقرير السنوي للصيدلي
//  مضافه الى صفحة التقارير تحديداً زر التقرير السنوي في القائمة

import 'package:flutter/material.dart';

class MonthelyReports extends StatelessWidget {
  const MonthelyReports({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListBody(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.all(20),
              child: Table(
                defaultColumnWidth: const FixedColumnWidth(120.0),
                border: TableBorder.all(
                    color: Colors.black, style: BorderStyle.solid, width: 2),
                children: [
                  TableRow(children: [
                    Column(children: const [
                      Text('Website', style: TextStyle(fontSize: 20.0))
                    ]),
                    Column(children: const [
                      Text('Tutorial', style: TextStyle(fontSize: 20.0))
                    ]),
                    Column(children: const [
                      Text('Review', style: TextStyle(fontSize: 20.0))
                    ]),
                  ]),
                  TableRow(children: [
                    Column(children: const [Text('Javatpoint')]),
                    Column(children: const [Text('Flutter')]),
                    Column(children: const [Text('5*')]),
                  ]),
                  TableRow(children: [
                    Column(children: const [Text('Javatpoint')]),
                    Column(children: const [Text('MySQL')]),
                    Column(children: const [Text('5*')]),
                  ]),
                  TableRow(children: [
                    Column(children: const [Text('Javatpoint')]),
                    Column(children: const [Text('ReactJS')]),
                    Column(children: const [Text('5*')]),
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
