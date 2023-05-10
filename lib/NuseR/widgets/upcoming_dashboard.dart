//    ID  -- >    2040688
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medh/Theme/theme.dart';

class UpcomingDashboard extends ConsumerStatefulWidget {
  const UpcomingDashboard({super.key});
  @override
  UpcomingDashboardState createState() => UpcomingDashboardState();
}

class UpcomingDashboardState extends ConsumerState<UpcomingDashboard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            " ردود على حسب اسرع رد ",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 20),
          const Text(
            "صيدلية",
          ),
          const SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              color: colors(context).color4,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x47000000),
                  blurRadius: 3,
                  spreadRadius: 2,
                )
              ],
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  const ListTile(
                    title: Text(
                      "إسم الدواء",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: "IBMPlexSansArabic",
                      ),
                    ),
                    subtitle: Text(
                      "ملاحظات",
                      style: TextStyle(
                        fontFamily: "IBMPlexSansArabic",
                      ),
                    ),
                    trailing: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("assets/images/icon.png"),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "سعر الدواء",
                        style: TextStyle(
                          fontFamily: "IBMPlexSansArabic",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text("\$السعر",
                          style: TextStyle(
                            color: colors(context).color2,
                            fontFamily: "IBMPlexSansArabic",
                            fontWeight: FontWeight.w500,
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "المسافة",
                        style: TextStyle(
                          fontFamily: "IBMPlexSansArabic",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text("كم : km",
                          style: TextStyle(
                            color: colors(context).color2,
                            fontFamily: "IBMPlexSansArabic",
                            fontWeight: FontWeight.w500,
                          ))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(
                      thickness: 1,
                      color: colors(context).color3,
                      height: 20,
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
                          const Text(
                            "12/01/2023",
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
                            "متصل",
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 150,
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            color: colors(context).color3,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Text(
                              "إلغاء",
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 150,
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            color: colors(context).color1,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Text(
                              "طلب",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
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
          const SizedBox(height: 20),
          const Text(
            "صيدلية",
          ),
          const SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              color: colors(context).color4,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x47000000),
                  blurRadius: 3,
                  spreadRadius: 2,
                )
              ],
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  const ListTile(
                    title: Text(
                      "إسم الدواء",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: "IBMPlexSansArabic",
                      ),
                    ),
                    subtitle: Text(
                      "ملاحظات",
                      style: TextStyle(
                        fontFamily: "IBMPlexSansArabic",
                      ),
                    ),
                    trailing: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("assets/images/icon.png"),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "سعر الدواء",
                        style: TextStyle(
                          fontFamily: "IBMPlexSansArabic",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text("\$السعر",
                          style: TextStyle(
                            color: colors(context).color2,
                            fontFamily: "IBMPlexSansArabic",
                            fontWeight: FontWeight.w500,
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "المسافة",
                        style: TextStyle(
                          fontFamily: "IBMPlexSansArabic",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text("كم : km",
                          style: TextStyle(
                            color: colors(context).color2,
                            fontFamily: "IBMPlexSansArabic",
                            fontWeight: FontWeight.w500,
                          ))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(
                      thickness: 1,
                      color: colors(context).color3,
                      height: 20,
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
                          const Text(
                            "12/01/2023",
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
                            "متصل",
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 150,
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            color: colors(context).color3,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Text(
                              "إلغاء",
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 150,
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            color: colors(context).color1,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Text(
                              "طلب",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
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
