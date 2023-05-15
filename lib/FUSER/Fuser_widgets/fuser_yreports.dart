// ID  -- >        2040715

// صفحة التقرير السنوي للصيدلي
//  مضافه الى صفحة التقارير تحديداً زر التقرير السنوي في القائمة

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:medh/FUSER/Summary/Wedgits/roundedborder_with_icon.dart';

import '../screens/fuser_12mreports.dart';

class YearlyReports extends StatefulWidget {
  const YearlyReports({super.key});

  @override
  State<YearlyReports> createState() => _YearlyReportsState();
}

class _YearlyReportsState extends State<YearlyReports> {
  DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat.y().format(DateTime(2024));
    //  هذا عشان زر الرجوع

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            "تقرير سنوي",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 20),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const Months12Reports(), // ID  -- >        2040747
                ),
              );
            },
            leading: Container(
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                color: Color(0xFFF4F6FA),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.calendar_month,
                color: Color(0xBA7C1831),
                size: 25,
              ),
            ),
            title: Text(
              ' تقرير شهر :  1/ $formattedDate',
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                fontFamily: "Amiri_Quran",
              ),
            ),
            trailing: const RoundedBorderWithIcon(
              icon: Icons.arrow_circle_left_outlined,
              width: 30,
              height: 30,
            ),
          ),
          const Divider(
            thickness: 1.5,
          ),
          const SizedBox(height: 5),
          ListTile(
            onTap: () {},
            leading: Container(
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                color: Color(0xFFF4F6FA),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.calendar_month,
                color: Color(0xD4BAF07C),
                size: 25,
              ),
            ),
            title: Text(
              ' تقرير شهر :  2/ $formattedDate',
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                fontFamily: "Amiri_Quran",
              ),
            ),
            trailing: const RoundedBorderWithIcon(
              icon: Icons.arrow_circle_left_outlined,
              width: 30,
              height: 30,
            ),
          ),
          const Divider(
            thickness: 1.5,
          ),
          ListTile(
            onTap: () {},
            leading: Container(
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                color: Color(0xFFF4F6FA),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.calendar_month,
                color: Color(0xFF9B9132),
                size: 25,
              ),
            ),
            title: Text(
              ' تقرير شهر :  3/ $formattedDate',
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                fontFamily: "Amiri_Quran",
              ),
            ),
            trailing: const RoundedBorderWithIcon(
              icon: Icons.arrow_circle_left_outlined,
              width: 30,
              height: 30,
            ),
          ),
          const Divider(
            thickness: 1.5,
          ),
          const SizedBox(height: 5),
          ListTile(
            onTap: () {},
            leading: Container(
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                color: Color(0xFFF4F6FA),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.calendar_month,
                color: Color(0xFFCE2C2C),
                size: 25,
              ),
            ),
            title: Text(
              ' تقرير شهر :  4/ $formattedDate',
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                fontFamily: "Amiri_Quran",
              ),
            ),
            trailing: const RoundedBorderWithIcon(
              icon: Icons.arrow_circle_left_outlined,
              width: 30,
              height: 30,
            ),
          ),
          const Divider(
            thickness: 1.5,
          ),
          ListTile(
            onTap: () {},
            leading: Container(
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                color: Color(0xFFF4F6FA),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.calendar_month,
                color: Color(0xFF00FFB3),
                size: 25,
              ),
            ),
            title: Text(
              ' تقرير شهر :  5/ $formattedDate',
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                fontFamily: "Amiri_Quran",
              ),
            ),
            trailing: const RoundedBorderWithIcon(
              icon: Icons.arrow_circle_left_outlined,
              width: 30,
              height: 30,
            ),
          ),
          const Divider(
            thickness: 1.5,
          ),
          const SizedBox(height: 5),
          ListTile(
            onTap: () {},
            leading: Container(
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                color: Color(0xFFF4F6FA),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.calendar_month,
                color: Color(0xFF1330B3),
                size: 25,
              ),
            ),
            title: Text(
              ' تقرير شهر :  6/ $formattedDate',
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                fontFamily: "Amiri_Quran",
              ),
            ),
            trailing: const RoundedBorderWithIcon(
              icon: Icons.arrow_circle_left_outlined,
              width: 30,
              height: 30,
            ),
          ),
          const Divider(
            thickness: 1.5,
          ),
          ListTile(
            onTap: () {},
            leading: Container(
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                color: Color(0xFFF4F6FA),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.calendar_month,
                color: Color(0xBA7C1831),
                size: 25,
              ),
            ),
            title: Text(
              ' تقرير شهر :  7/ $formattedDate',
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                fontFamily: "Amiri_Quran",
              ),
            ),
            trailing: const RoundedBorderWithIcon(
              icon: Icons.arrow_circle_left_outlined,
              width: 30,
              height: 30,
            ),
          ),
          const Divider(
            thickness: 1.5,
          ),
          const SizedBox(height: 5),
          ListTile(
            onTap: () {},
            leading: Container(
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                color: Color(0xFFF4F6FA),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.calendar_month,
                color: Color(0xD4BAF07C),
                size: 25,
              ),
            ),
            title: Text(
              ' تقرير شهر :  8/ $formattedDate',
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                fontFamily: "Amiri_Quran",
              ),
            ),
            trailing: const RoundedBorderWithIcon(
              icon: Icons.arrow_circle_left_outlined,
              width: 30,
              height: 30,
            ),
          ),
          const Divider(
            thickness: 1.5,
          ),
          ListTile(
            onTap: () {},
            leading: Container(
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                color: Color(0xFFF4F6FA),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.calendar_month,
                color: Color(0xFF9B9132),
                size: 25,
              ),
            ),
            title: Text(
              ' تقرير شهر :  9/ $formattedDate',
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                fontFamily: "Amiri_Quran",
              ),
            ),
            trailing: const RoundedBorderWithIcon(
              icon: Icons.arrow_circle_left_outlined,
              width: 30,
              height: 30,
            ),
          ),
          const Divider(
            thickness: 1.5,
          ),
          const SizedBox(height: 5),
          ListTile(
            onTap: () {},
            leading: Container(
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                color: Color(0xFFF4F6FA),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.calendar_month,
                color: Color(0xFFCE2C2C),
                size: 25,
              ),
            ),
            title: Text(
              ' تقرير شهر :  10/ $formattedDate',
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                fontFamily: "Amiri_Quran",
              ),
            ),
            trailing: const RoundedBorderWithIcon(
              icon: Icons.arrow_circle_left_outlined,
              width: 30,
              height: 30,
            ),
          ),
          const Divider(
            thickness: 1.5,
          ),
          ListTile(
            onTap: () {},
            leading: Container(
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                color: Color(0xFFF4F6FA),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.calendar_month,
                color: Color(0xFF00FFB3),
                size: 25,
              ),
            ),
            title: Text(
              ' تقرير شهر :  11/ $formattedDate',
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                fontFamily: "Amiri_Quran",
              ),
            ),
            trailing: const RoundedBorderWithIcon(
              icon: Icons.arrow_circle_left_outlined,
              width: 30,
              height: 30,
            ),
          ),
          const Divider(
            thickness: 1.5,
          ),
          const SizedBox(height: 5),
          ListTile(
            onTap: () {},
            leading: Container(
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                color: Color(0xFFF4F6FA),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.calendar_month,
                color: Color(0xFF1330B3),
                size: 25,
              ),
            ),
            title: Text(
              ' تقرير شهر :  12/ $formattedDate',
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                fontFamily: "Amiri_Quran",
              ),
            ),
            trailing: const RoundedBorderWithIcon(
              icon: Icons.arrow_circle_left_outlined,
              width: 30,
              height: 30,
            ),
          ),
          const Divider(
            thickness: 1.5,
          ),
        ],
      ),
    );
  }
}
