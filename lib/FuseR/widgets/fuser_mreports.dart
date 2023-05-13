// ID  -- >        2040716
// صفحة التقرير اليوم الحالي للصيدلي
//  مضافه الى صفحة التقارير تحديداً زر التقرير السنوي في القائمة

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:medh/Theme/theme.dart';

class DayReports extends ConsumerStatefulWidget {
  const DayReports({super.key});

  @override
  DayReportsState createState() => DayReportsState();
}

class DayReportsState extends ConsumerState<DayReports> {
  DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    // متغير الوقت
    String formattedDate = DateFormat('hh:mm a').format(now);
    var intValue = Random().nextInt(10); // Value is >= 0 and < 10.
    intValue = Random().nextInt(100) + 50; // Value is >= 50 and < 150.

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            "التقرير اليومي ",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),

          // لا ئحة التقارير اليومية
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              color: colors(context).color4,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x47000000),
                  blurRadius: 3,
                  spreadRadius: 1,
                )
              ],
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Center(
                    child: Container(
                      color: Colors.white,
                      margin:
                          const EdgeInsets.only(right: 2, left: 2, bottom: 3),
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: Table(
                        defaultColumnWidth: const FlexColumnWidth(1),
                        border: TableBorder.all(
                            color: const Color(0xFF58329B),
                            style: BorderStyle.solid,
                            width: 1.5),
                        children: [
                          TableRow(children: [
                            Column(children: [
                              Text(
                                'الصنف',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  color: colors(context).color2,
                                ),
                              ),
                            ]),
                            Column(children: [
                              Text(
                                'الموقع',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  color: colors(context).color2,
                                ),
                              ),
                            ]),
                            Column(children: [
                              Text(
                                'المورد',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  color: colors(context).color2,
                                ),
                              ),
                            ]),
                            Column(children: [
                              Text(
                                'الكمية',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  color: colors(context).color2,
                                ),
                              ),
                            ]),
                            Column(children: [
                              Text(
                                'السعر',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  color: colors(context).color2,
                                ),
                              ),
                            ]),
                            Column(children: [
                              Text(
                                'التاريخ',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  color: colors(context).color2,
                                ),
                              ),
                            ]),
                          ]),
                          TableRow(children: [
                            Column(children: const [
                              Text(
                                'ع.م - س',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontFamily: "Amiri_Quran",
                                ),
                              ),
                            ]),
                            Column(children: const [
                              Text(
                                'إب - السبل ',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontFamily: "Amiri_Quran",
                                ),
                              ),
                            ]),
                            Column(children: const [
                              Text(
                                '5*',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontFamily: "Amiri_Quran",
                                ),
                              ),
                            ]),
                            Column(
                              children: const [
                                Text(
                                  '14',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontFamily: "Amiri_Quran",
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: const [
                                Text(
                                  '500*',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontFamily: "Amiri_Quran",
                                  ),
                                ),
                              ],
                            ),
                            Column(children: [
                              Text(
                                formattedDate,
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Amiri_Quran",
                                ),
                              ),
                            ]),
                          ]),
                          TableRow(children: [
                            Column(children: const [
                              Text(
                                'ع.م - س',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontFamily: "Amiri_Quran",
                                ),
                              ),
                            ]),
                            Column(
                              children: const [
                                Text(
                                  'إب - السبل ',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontFamily: "Amiri_Quran",
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: const [
                                Text(
                                  '5*',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontFamily: "Amiri_Quran",
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: const [
                                Text(
                                  '89',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontFamily: "Amiri_Quran",
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: const [
                                Text(
                                  '500*',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontFamily: "Amiri_Quran",
                                  ),
                                ),
                              ],
                            ),
                            Column(children: [
                              Text(
                                formattedDate,
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Amiri_Quran",
                                ),
                              ),
                            ]),
                          ]),
                          TableRow(children: [
                            Column(children: const [
                              Text(
                                'ع.م - س',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontFamily: "Amiri_Quran",
                                ),
                              ),
                            ]),
                            Column(
                              children: const [
                                Text(
                                  'إب - السبل ',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontFamily: "Amiri_Quran",
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: const [
                                Text(
                                  '5*',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontFamily: "Amiri_Quran",
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  '$intValue',
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Amiri_Quran",
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: const [
                                Text(
                                  '500*',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontFamily: "Amiri_Quran",
                                  ),
                                ),
                              ],
                            ),
                            Column(children: [
                              Text(
                                formattedDate,
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Amiri_Quran",
                                ),
                              ),
                            ]),
                          ]),
                          TableRow(children: [
                            Column(children: const [
                              Text(
                                'ع.م - س',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontFamily: "Amiri_Quran",
                                ),
                              ),
                            ]),
                            Column(
                              children: const [
                                Text(
                                  'إب - السبل ',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontFamily: "Amiri_Quran",
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: const [
                                Text(
                                  '5*',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontFamily: "Amiri_Quran",
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  '$intValue',
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Amiri_Quran",
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: const [
                                Text(
                                  '500*',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontFamily: "Amiri_Quran",
                                  ),
                                ),
                              ],
                            ),
                            Column(children: [
                              Text(
                                formattedDate,
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Amiri_Quran",
                                ),
                              ),
                            ]),
                          ]),
                          TableRow(children: [
                            Column(children: const [
                              Text(
                                'ع.م - س',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontFamily: "Amiri_Quran",
                                ),
                              ),
                            ]),
                            Column(
                              children: const [
                                Text(
                                  'إب - السبل ',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontFamily: "Amiri_Quran",
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: const [
                                Text(
                                  '5*',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontFamily: "Amiri_Quran",
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  '$intValue',
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Amiri_Quran",
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: const [
                                Text(
                                  '500*',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontFamily: "Amiri_Quran",
                                  ),
                                ),
                              ],
                            ),
                            Column(children: [
                              Text(
                                formattedDate,
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Amiri_Quran",
                                ),
                              ),
                            ]),
                          ]),
                          TableRow(children: [
                            Column(children: const [
                              Text(
                                'ع.م - س',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontFamily: "Amiri_Quran",
                                ),
                              ),
                            ]),
                            Column(
                              children: const [
                                Text(
                                  'إب - السبل ',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontFamily: "Amiri_Quran",
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: const [
                                Text(
                                  '5*',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontFamily: "Amiri_Quran",
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  '$intValue',
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Amiri_Quran",
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: const [
                                Text(
                                  '500*',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontFamily: "Amiri_Quran",
                                  ),
                                ),
                              ],
                            ),
                            Column(children: [
                              Text(
                                formattedDate,
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Amiri_Quran",
                                ),
                              ),
                            ]),
                          ]),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_month,
                            color: colors(context).color1,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            formattedDate,
                            style: const TextStyle(),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.access_time_filled,
                            color: colors(context).color1,
                          ),
                          const SizedBox(width: 5),
                          const Text(
                            "02:58 AM",
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(width: 5),
                          const Text(
                            "توريد …",
                            style: TextStyle(),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 50,
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            color: colors(context).color3,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Icon(
                            Icons.chrome_reader_mode_outlined,
                            color: colors(context).color5,
                          )),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 50,
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            color: colors(context).color1,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.print_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
