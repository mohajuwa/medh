// صفحة التقرير الشهري للصيدلي
//  مضافه الى صفحة التقارير تحديداً زر التقرير السنوي في القائمة

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MonthelyReports extends StatefulWidget {
  const MonthelyReports({super.key});

  @override
  State<MonthelyReports> createState() => _MonthelyReportsState();
}

DateTime now = DateTime.now();

class _MonthelyReportsState extends State<MonthelyReports> {
  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat.yMMMMd().format(now);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            "تقرير شهري",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 20),
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
                color: Color(0xFF58329B),
                size: 25,
              ),
            ),
            title: const Text(
              "عن التطبيق",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
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
                color: Color(0xFF58329B),
                size: 25,
              ),
            ),
            title: const Text(
              "عن التطبيق",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
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
                color: Color(0xFF58329B),
                size: 25,
              ),
            ),
            title: const Text(
              "عن التطبيق",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
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
                color: Color(0xFF58329B),
                size: 25,
              ),
            ),
            title: const Text(
              "عن التطبيق",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
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
                color: Color(0xFF58329B),
                size: 25,
              ),
            ),
            title: const Text(
              "عن التطبيق",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
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
                color: Color(0xFF58329B),
                size: 25,
              ),
            ),
            title: const Text(
              "عن التطبيق",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
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
                color: Color(0xFF58329B),
                size: 25,
              ),
            ),
            title: const Text(
              "عن التطبيق",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
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
                color: Color(0xFF58329B),
                size: 25,
              ),
            ),
            title: const Text(
              "عن التطبيق",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
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
                color: Color(0xFF58329B),
                size: 25,
              ),
            ),
            title: const Text(
              "عن التطبيق",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
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
                color: Color(0xFF58329B),
                size: 25,
              ),
            ),
            title: const Text(
              "عن التطبيق",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
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
                color: Color(0xFF58329B),
                size: 25,
              ),
            ),
            title: const Text(
              "عن التطبيق",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
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
                color: Color(0xFF58329B),
                size: 25,
              ),
            ),
            title: const Text(
              "عن التطبيق",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
          ),
          const Divider(
            thickness: 1.5,
          ),

          // لا ئحة التقارير الشهرية
          // Container(
          //   padding: const EdgeInsets.symmetric(vertical: 5),
          //   decoration: BoxDecoration(
          //     color: Colors.white,
          //     borderRadius: BorderRadius.circular(10),
          //     boxShadow: const [
          //       BoxShadow(
          //         color: Color(0x1F000000),
          //         blurRadius: 4,
          //         spreadRadius: 2,
          //       )
          //     ],
          //   ),
          //   child: SizedBox(
          //     width: MediaQuery.of(context).size.width,
          //     child: Column(
          //       children: [
          //         Center(
          //           child: Container(
          //             margin: const EdgeInsets.only(
          //                 right: 2, left: 2, top: 0.5, bottom: 3),
          //             width: MediaQuery.of(context).size.width / 1.1,
          //             child: Table(
          //               defaultColumnWidth: const FlexColumnWidth(1),
          //               border: TableBorder.all(
          //                   color: const Color(0xFF58329B),
          //                   style: BorderStyle.solid,
          //                   width: 1.5),
          //               children: [
          //                 TableRow(children: [
          //                   Column(children: const [
          //                     Text(
          //                       'الصنف',
          //                       style: TextStyle(
          //                         fontSize: 14.0,
          //                         fontWeight: FontWeight.w600,
          //                         color: Colors.blue,
          //                       ),
          //                     ),
          //                   ]),
          //                   Column(children: const [
          //                     Text(
          //                       'الموقع',
          //                       style: TextStyle(
          //                           fontSize: 14.0,
          //                           fontWeight: FontWeight.w600,
          //                           color: Colors.blue),
          //                     ),
          //                   ]),
          //                   Column(children: const [
          //                     Text(
          //                       'المورد',
          //                       style: TextStyle(
          //                           fontSize: 14.0,
          //                           fontWeight: FontWeight.w600,
          //                           color: Colors.blue),
          //                     ),
          //                   ]),
          //                   Column(children: const [
          //                     Text(
          //                       'الكمية',
          //                       style: TextStyle(
          //                           fontSize: 14.0,
          //                           fontWeight: FontWeight.w600,
          //                           color: Colors.blue),
          //                     ),
          //                   ]),
          //                   Column(children: const [
          //                     Text(
          //                       'السعر',
          //                       style: TextStyle(
          //                           fontSize: 14.0,
          //                           fontWeight: FontWeight.w600,
          //                           color: Colors.blue),
          //                     ),
          //                   ]),
          //                   Column(children: const [
          //                     Text(
          //                       'التاريخ',
          //                       style: TextStyle(
          //                           fontSize: 14.0,
          //                           fontWeight: FontWeight.w600,
          //                           color: Colors.blue),
          //                     ),
          //                   ]),
          //                 ]),
          //                 TableRow(children: [
          //                   Column(children: const [
          //                     Text(
          //                       'ع.م - س',
          //                       style: TextStyle(
          //                         fontSize: 10,
          //                         fontWeight: FontWeight.w600,
          //                         fontFamily: "Amiri_Quran",
          //                         color: Colors.black,
          //                       ),
          //                     ),
          //                   ]),
          //                   Column(children: const [
          //                     Text(
          //                       'إب - السبل ',
          //                       style: TextStyle(
          //                         fontSize: 10,
          //                         fontWeight: FontWeight.w600,
          //                         fontFamily: "Amiri_Quran",
          //                         color: Colors.black,
          //                       ),
          //                     ),
          //                   ]),
          //                   Column(children: const [
          //                     Text(
          //                       '5*',
          //                       style: TextStyle(
          //                         fontSize: 10,
          //                         fontWeight: FontWeight.w600,
          //                         fontFamily: "Amiri_Quran",
          //                         color: Colors.black,
          //                       ),
          //                     ),
          //                   ]),
          //                   Column(
          //                     children: const [
          //                       Text(
          //                         '1*',
          //                         style: TextStyle(
          //                             fontSize: 10,
          //                             fontWeight: FontWeight.w600,
          //                             fontFamily: "Amiri_Quran",
          //                             color: Colors.black),
          //                       ),
          //                     ],
          //                   ),
          //                   Column(
          //                     children: const [
          //                       Text(
          //                         '500*',
          //                         style: TextStyle(
          //                             fontSize: 10,
          //                             fontWeight: FontWeight.w600,
          //                             fontFamily: "Amiri_Quran",
          //                             color: Colors.black),
          //                       ),
          //                     ],
          //                   ),
          //                   Column(children: [
          //                     Text(
          //                       formattedDate,
          //                       style: const TextStyle(
          //                           fontSize: 10,
          //                           fontWeight: FontWeight.w400,
          //                           fontFamily: "Amiri_Quran",
          //                           color: Colors.black),
          //                     ),
          //                   ]),
          //                 ]),
          //                 TableRow(children: [
          //                   Column(children: const [
          //                     Text(
          //                       'ع.م - س',
          //                       style: TextStyle(
          //                         fontSize: 10,
          //                         fontWeight: FontWeight.w600,
          //                         fontFamily: "Amiri_Quran",
          //                         color: Colors.black,
          //                       ),
          //                     ),
          //                   ]),
          //                   Column(
          //                     children: const [
          //                       Text(
          //                         'إب - السبل ',
          //                         style: TextStyle(
          //                             fontSize: 10,
          //                             fontWeight: FontWeight.w600,
          //                             fontFamily: "Amiri_Quran",
          //                             color: Colors.black),
          //                       ),
          //                     ],
          //                   ),
          //                   Column(
          //                     children: const [
          //                       Text(
          //                         '5*',
          //                         style: TextStyle(
          //                             fontSize: 10,
          //                             fontWeight: FontWeight.w600,
          //                             fontFamily: "Amiri_Quran",
          //                             color: Colors.black),
          //                       ),
          //                     ],
          //                   ),
          //                   Column(
          //                     children: const [
          //                       Text(
          //                         '1*',
          //                         style: TextStyle(
          //                             fontSize: 10,
          //                             fontWeight: FontWeight.w600,
          //                             fontFamily: "Amiri_Quran",
          //                             color: Colors.black),
          //                       ),
          //                     ],
          //                   ),
          //                   Column(
          //                     children: const [
          //                       Text(
          //                         '500*',
          //                         style: TextStyle(
          //                             fontSize: 10,
          //                             fontWeight: FontWeight.w600,
          //                             fontFamily: "Amiri_Quran",
          //                             color: Colors.black),
          //                       ),
          //                     ],
          //                   ),
          //                   Column(children: [
          //                     Text(
          //                       formattedDate,
          //                       style: const TextStyle(
          //                           fontSize: 10,
          //                           fontWeight: FontWeight.w400,
          //                           fontFamily: "Amiri_Quran",
          //                           color: Colors.black),
          //                     ),
          //                   ]),
          //                 ]),
          //                 TableRow(children: [
          //                   Column(children: const [
          //                     Text(
          //                       'ع.م - س',
          //                       style: TextStyle(
          //                         fontSize: 10,
          //                         fontWeight: FontWeight.w600,
          //                         fontFamily: "Amiri_Quran",
          //                         color: Colors.black,
          //                       ),
          //                     ),
          //                   ]),
          //                   Column(
          //                     children: const [
          //                       Text(
          //                         'إب - السبل ',
          //                         style: TextStyle(
          //                             fontSize: 10,
          //                             fontWeight: FontWeight.w600,
          //                             fontFamily: "Amiri_Quran",
          //                             color: Colors.black),
          //                       ),
          //                     ],
          //                   ),
          //                   Column(
          //                     children: const [
          //                       Text(
          //                         '5*',
          //                         style: TextStyle(
          //                             fontSize: 10,
          //                             fontWeight: FontWeight.w600,
          //                             fontFamily: "Amiri_Quran",
          //                             color: Colors.black),
          //                       ),
          //                     ],
          //                   ),
          //                   Column(
          //                     children: const [
          //                       Text(
          //                         '1*',
          //                         style: TextStyle(
          //                             fontSize: 10,
          //                             fontWeight: FontWeight.w600,
          //                             fontFamily: "Amiri_Quran",
          //                             color: Colors.black),
          //                       ),
          //                     ],
          //                   ),
          //                   Column(
          //                     children: const [
          //                       Text(
          //                         '500*',
          //                         style: TextStyle(
          //                             fontSize: 10,
          //                             fontWeight: FontWeight.w600,
          //                             fontFamily: "Amiri_Quran",
          //                             color: Colors.black),
          //                       ),
          //                     ],
          //                   ),
          //                   Column(children: [
          //                     Text(
          //                       formattedDate,
          //                       style: const TextStyle(
          //                           fontSize: 10,
          //                           fontWeight: FontWeight.w400,
          //                           fontFamily: "Amiri_Quran",
          //                           color: Colors.black),
          //                     ),
          //                   ]),
          //                 ]),
          //                 TableRow(children: [
          //                   Column(children: const [
          //                     Text(
          //                       'ع.م - س',
          //                       style: TextStyle(
          //                         fontSize: 10,
          //                         fontWeight: FontWeight.w600,
          //                         fontFamily: "Amiri_Quran",
          //                         color: Colors.black,
          //                       ),
          //                     ),
          //                   ]),
          //                   Column(
          //                     children: const [
          //                       Text(
          //                         'إب - السبل ',
          //                         style: TextStyle(
          //                             fontSize: 10,
          //                             fontWeight: FontWeight.w600,
          //                             fontFamily: "Amiri_Quran",
          //                             color: Colors.black),
          //                       ),
          //                     ],
          //                   ),
          //                   Column(
          //                     children: const [
          //                       Text(
          //                         '5*',
          //                         style: TextStyle(
          //                             fontSize: 10,
          //                             fontWeight: FontWeight.w600,
          //                             fontFamily: "Amiri_Quran",
          //                             color: Colors.black),
          //                       ),
          //                     ],
          //                   ),
          //                   Column(
          //                     children: const [
          //                       Text(
          //                         '1*',
          //                         style: TextStyle(
          //                             fontSize: 10,
          //                             fontWeight: FontWeight.w600,
          //                             fontFamily: "Amiri_Quran",
          //                             color: Colors.black),
          //                       ),
          //                     ],
          //                   ),
          //                   Column(
          //                     children: const [
          //                       Text(
          //                         '500*',
          //                         style: TextStyle(
          //                             fontSize: 10,
          //                             fontWeight: FontWeight.w600,
          //                             fontFamily: "Amiri_Quran",
          //                             color: Colors.black),
          //                       ),
          //                     ],
          //                   ),
          //                   Column(children: [
          //                     Text(
          //                       formattedDate,
          //                       style: const TextStyle(
          //                           fontSize: 10,
          //                           fontWeight: FontWeight.w400,
          //                           fontFamily: "Amiri_Quran",
          //                           color: Colors.black),
          //                     ),
          //                   ]),
          //                 ]),
          //                 TableRow(children: [
          //                   Column(children: const [
          //                     Text(
          //                       'ع.م - س',
          //                       style: TextStyle(
          //                         fontSize: 10,
          //                         fontWeight: FontWeight.w600,
          //                         fontFamily: "Amiri_Quran",
          //                         color: Colors.black,
          //                       ),
          //                     ),
          //                   ]),
          //                   Column(
          //                     children: const [
          //                       Text(
          //                         'إب - السبل ',
          //                         style: TextStyle(
          //                             fontSize: 10,
          //                             fontWeight: FontWeight.w600,
          //                             fontFamily: "Amiri_Quran",
          //                             color: Colors.black),
          //                       ),
          //                     ],
          //                   ),
          //                   Column(
          //                     children: const [
          //                       Text(
          //                         '5*',
          //                         style: TextStyle(
          //                             fontSize: 10,
          //                             fontWeight: FontWeight.w600,
          //                             fontFamily: "Amiri_Quran",
          //                             color: Colors.black),
          //                       ),
          //                     ],
          //                   ),
          //                   Column(
          //                     children: const [
          //                       Text(
          //                         '1*',
          //                         style: TextStyle(
          //                             fontSize: 10,
          //                             fontWeight: FontWeight.w600,
          //                             fontFamily: "Amiri_Quran",
          //                             color: Colors.black),
          //                       ),
          //                     ],
          //                   ),
          //                   Column(
          //                     children: const [
          //                       Text(
          //                         '500*',
          //                         style: TextStyle(
          //                             fontSize: 10,
          //                             fontWeight: FontWeight.w600,
          //                             fontFamily: "Amiri_Quran",
          //                             color: Colors.black),
          //                       ),
          //                     ],
          //                   ),
          //                   Column(children: [
          //                     Text(
          //                       formattedDate,
          //                       style: const TextStyle(
          //                           fontSize: 10,
          //                           fontWeight: FontWeight.w400,
          //                           fontFamily: "Amiri_Quran",
          //                           color: Colors.black),
          //                     ),
          //                   ]),
          //                 ]),
          //                 TableRow(children: [
          //                   Column(children: const [
          //                     Text(
          //                       'ع.م - س',
          //                       style: TextStyle(
          //                         fontSize: 10,
          //                         fontWeight: FontWeight.w600,
          //                         fontFamily: "Amiri_Quran",
          //                         color: Colors.black,
          //                       ),
          //                     ),
          //                   ]),
          //                   Column(
          //                     children: const [
          //                       Text(
          //                         'إب - السبل ',
          //                         style: TextStyle(
          //                             fontSize: 10,
          //                             fontWeight: FontWeight.w600,
          //                             fontFamily: "Amiri_Quran",
          //                             color: Colors.black),
          //                       ),
          //                     ],
          //                   ),
          //                   Column(
          //                     children: const [
          //                       Text(
          //                         '5*',
          //                         style: TextStyle(
          //                             fontSize: 10,
          //                             fontWeight: FontWeight.w600,
          //                             fontFamily: "Amiri_Quran",
          //                             color: Colors.black),
          //                       ),
          //                     ],
          //                   ),
          //                   Column(
          //                     children: const [
          //                       Text(
          //                         '1*',
          //                         style: TextStyle(
          //                             fontSize: 10,
          //                             fontWeight: FontWeight.w600,
          //                             fontFamily: "Amiri_Quran",
          //                             color: Colors.black),
          //                       ),
          //                     ],
          //                   ),
          //                   Column(
          //                     children: const [
          //                       Text(
          //                         '500*',
          //                         style: TextStyle(
          //                             fontSize: 10,
          //                             fontWeight: FontWeight.w600,
          //                             fontFamily: "Amiri_Quran",
          //                             color: Colors.black),
          //                       ),
          //                     ],
          //                   ),
          //                   Column(children: [
          //                     Text(
          //                       formattedDate,
          //                       style: const TextStyle(
          //                           fontSize: 10,
          //                           fontWeight: FontWeight.w400,
          //                           fontFamily: "Amiri_Quran",
          //                           color: Colors.black),
          //                     ),
          //                   ]),
          //                 ]),
          //               ],
          //             ),
          //           ),
          //         ),
          //         Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceAround,
          //           children: [
          //             Row(
          //               children: const [
          //                 Icon(
          //                   Icons.calendar_month,
          //                   color: Color(0x89000000),
          //                 ),
          //                 SizedBox(width: 5),
          //                 Text(
          //                   "12/01/2023",
          //                   style: TextStyle(
          //                     color: Color(0x89000000),
          //                   ),
          //                 ),
          //               ],
          //             ),
          //             Row(
          //               children: const [
          //                 Icon(
          //                   Icons.access_time_filled,
          //                   color: Color(0x89000000),
          //                 ),
          //                 SizedBox(width: 5),
          //                 Text(
          //                   "02:58 AM",
          //                   style: TextStyle(color: Color(0x89000000)),
          //                 )
          //               ],
          //             ),
          //             Row(
          //               children: [
          //                 Container(
          //                   padding: const EdgeInsets.all(5),
          //                   decoration: const BoxDecoration(
          //                     color: Colors.green,
          //                     shape: BoxShape.circle,
          //                   ),
          //                 ),
          //                 const SizedBox(width: 5),
          //                 const Text(
          //                   "متصل",
          //                   style: TextStyle(
          //                     color: Color(0x89000000),
          //                   ),
          //                 )
          //               ],
          //             )
          //           ],
          //         ),
          //         const SizedBox(height: 15),
          //         Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //           children: [
          //             InkWell(
          //               onTap: () {},
          //               child: Container(
          //                 width: 50,
          //                 padding: const EdgeInsets.symmetric(vertical: 12),
          //                 decoration: BoxDecoration(
          //                   color: const Color(0xFFF4F6FA),
          //                   borderRadius: BorderRadius.circular(10),
          //                 ),
          //                 child: const Center(
          //                     child: Icon(Icons.chrome_reader_mode_outlined)),
          //               ),
          //             ),
          //             InkWell(
          //               onTap: () {},
          //               child: Container(
          //                 width: 50,
          //                 padding: const EdgeInsets.symmetric(vertical: 12),
          //                 decoration: BoxDecoration(
          //                   color: const Color(0xFF58329B),
          //                   borderRadius: BorderRadius.circular(10),
          //                 ),
          //                 child: const Center(
          //                   child: Icon(
          //                     Icons.print_outlined,
          //                     color: Colors.white,
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //         const SizedBox(height: 10),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
