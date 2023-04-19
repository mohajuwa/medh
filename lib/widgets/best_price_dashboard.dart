import 'package:flutter/material.dart';

class BestPriceSample extends StatelessWidget {
  const BestPriceSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            " ردود على حسب أفضل سعر ",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w400,
              fontFamily: "Amiri_Quran",
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "صيدلية",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x1F000000),
                  blurRadius: 4,
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
                        fontWeight: FontWeight.bold,
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
                    children: const [
                      Text(
                        "سعر الدواء",
                        style: TextStyle(
                          color: Color(0x89000000),
                          fontFamily: "IBMPlexSansArabic",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("\$الأقل سعراً",
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontFamily: "IBMPlexSansArabic",
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        "المسافة",
                        style: TextStyle(
                          color: Color(0x89000000),
                          fontFamily: "IBMPlexSansArabic",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("\كم : km",
                          style: TextStyle(
                            color: Colors.black45,
                            fontFamily: "IBMPlexSansArabic",
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(
                      thickness: 1,
                      height: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.calendar_month,
                            color: Color(0x89000000),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "12/01/2023",
                            style: TextStyle(
                              color: Color(0x89000000),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.access_time_filled,
                            color: Color(0x89000000),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "02:58 AM",
                            style: TextStyle(color: Color(0x89000000)),
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
                            style: TextStyle(
                              color: Color(0x89000000),
                            ),
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
                            color: const Color(0xFFF4F6FA),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Text(
                              "إلغاء",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
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
                            color: const Color(0xFF58329B),
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
          const Text(
            "صيدلية",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x1F000000),
                  blurRadius: 4,
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
                        fontWeight: FontWeight.bold,
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
                    children: const [
                      Text(
                        "سعر الدواء",
                        style: TextStyle(
                          color: Color(0x89000000),
                          fontFamily: "IBMPlexSansArabic",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("\$الأقل سعراً",
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontFamily: "IBMPlexSansArabic",
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        "المسافة",
                        style: TextStyle(
                          color: Color(0x89000000),
                          fontFamily: "IBMPlexSansArabic",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("\كم : km",
                          style: TextStyle(
                            color: Colors.black45,
                            fontFamily: "IBMPlexSansArabic",
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(
                      thickness: 1,
                      height: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.calendar_month,
                            color: Color(0x89000000),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "12/01/2023",
                            style: TextStyle(
                              color: Color(0x89000000),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.access_time_filled,
                            color: Color(0x89000000),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "02:58 AM",
                            style: TextStyle(color: Color(0x89000000)),
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
                            style: TextStyle(
                              color: Color(0x89000000),
                            ),
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
                            color: const Color(0xFFF4F6FA),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Text(
                              "إلغاء",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
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
                            color: const Color(0xFF58329B),
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
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x1F000000),
                  blurRadius: 4,
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
                        fontWeight: FontWeight.bold,
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
                    children: const [
                      Text(
                        "سعر الدواء",
                        style: TextStyle(
                          color: Color(0x89000000),
                          fontFamily: "IBMPlexSansArabic",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("\$الأقل سعراً",
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontFamily: "IBMPlexSansArabic",
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        "المسافة",
                        style: TextStyle(
                          color: Color(0x89000000),
                          fontFamily: "IBMPlexSansArabic",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("\كم : km",
                          style: TextStyle(
                            color: Colors.black45,
                            fontFamily: "IBMPlexSansArabic",
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(
                      thickness: 1,
                      height: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.calendar_month,
                            color: Color(0x89000000),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "12/01/2023",
                            style: TextStyle(
                              color: Color(0x89000000),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.access_time_filled,
                            color: Color(0x89000000),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "02:58 AM",
                            style: TextStyle(color: Color(0x89000000)),
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
                            style: TextStyle(
                              color: Color(0x89000000),
                            ),
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
                            color: const Color(0xFFF4F6FA),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Text(
                              "إلغاء",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
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
                            color: const Color(0xFF58329B),
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
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x1F000000),
                  blurRadius: 4,
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
                        fontWeight: FontWeight.bold,
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
                    children: const [
                      Text(
                        "سعر الدواء",
                        style: TextStyle(
                          color: Color(0x89000000),
                          fontFamily: "IBMPlexSansArabic",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("\$الأقل سعراً",
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontFamily: "IBMPlexSansArabic",
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        "المسافة",
                        style: TextStyle(
                          color: Color(0x89000000),
                          fontFamily: "IBMPlexSansArabic",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("\كم : km",
                          style: TextStyle(
                            color: Colors.black45,
                            fontFamily: "IBMPlexSansArabic",
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(
                      thickness: 1,
                      height: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.calendar_month,
                            color: Color(0x89000000),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "12/01/2023",
                            style: TextStyle(
                              color: Color(0x89000000),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.access_time_filled,
                            color: Color(0x89000000),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "02:58 AM",
                            style: TextStyle(color: Color(0x89000000)),
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
                            style: TextStyle(
                              color: Color(0x89000000),
                            ),
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
                            color: const Color(0xFFF4F6FA),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Text(
                              "إلغاء",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
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
                            color: const Color(0xFF58329B),
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
        ],
      ),
    );
  }
}
