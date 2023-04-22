// الصفحة الرئيسية للصيدلي

import 'package:flutter/material.dart';
import 'package:medh/fuser_screens/screens/add_medcine.dart';
import 'package:medh/pages/home_page.dart';

import '../widgets/fuser_navbar_roots.dart';

import 'medicine_detils_home_screen.dart';

class FuserHomeScreen extends StatefulWidget {
  const FuserHomeScreen({super.key});

  @override
  State<FuserHomeScreen> createState() => _FuserHomeScreenState();
}

List symptoms = [
  // فلترة الأدوية حسب
  "مضاف مؤخراً",
  "الأقدم",
  "الأكثر طلباً",
  "الين",
];
List imgs = [
  // صور للأدوية في الصفحة الرئيسية
  "icon.png",
  "icon.png",
  "icon.png",
  "icon.png",
  "icon.png",
  "icon.png",
];
bool shadowColor = false;
double? scrolledUnderElevation;
const clr = Color(0xFF58329B);

class _FuserHomeScreenState extends State<FuserHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: MaterialApp(
        theme: ThemeData(fontFamily: 'El_Messiri'),
        debugShowCheckedModeBanner: false,
        home: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 60,
              scrolledUnderElevation: scrolledUnderElevation,
              shadowColor:
                  shadowColor ? Theme.of(context).colorScheme.shadow : clr,
              backgroundColor: Colors.white,
              title: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 0, top: 2),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0x1F000000),
                                blurRadius: 6,
                                spreadRadius: 4,
                              )
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(3),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.home_filled,
                                    color: Color(0xFF58329B),
                                    size: 30,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("assets/images/icon1.png"),
                    ),
                  ],
                ),
              ),
            ),
            body: ListView(
              children: [
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AddMedcineScreen(),
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: clr,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x1F000000),
                              blurRadius: 6,
                              spreadRadius: 4,
                            )
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.add,
                                color: clr,
                                size: 35,
                              ),
                            ),
                            const SizedBox(height: 30),
                            const Text(
                              "إضافة دواء",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "جديد",
                              style: TextStyle(
                                color: Colors.blue.shade100,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FuserNavBarRoots(),
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x1F000000),
                              blurRadius: 6,
                              spreadRadius: 4,
                            )
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: const BoxDecoration(
                                color: Color(0xFFF0EEFA),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.home_filled,
                                color: clr,
                                size: 35,
                              ),
                            ),
                            const SizedBox(height: 30),
                            const Text(
                              "تقارير",
                              style: TextStyle(
                                fontSize: 18,
                                // color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              "ما تم طلبه بكثرة ",
                              style: TextStyle(
                                color: Color(0x89000000),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    "فلترة الأدوية حسب ",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                      color: Color(0x89000000),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: symptoms.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF4F6FA),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0x6159329B),
                                blurRadius: 3,
                                spreadRadius: 2,
                              )
                            ],
                          ),
                          child: Center(
                            child: Text(
                              symptoms[index],
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0x89000000),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                const SizedBox(height: 15),
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    " متوفر",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                      color: Color(0x89000000),
                    ),
                  ),
                ),
                GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const FuserMedicineDitlesScreen(),
                          ),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.symmetric(vertical: 15),
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
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundImage:
                                  AssetImage("assets/images/${imgs[index]}"),
                            ),
                            const Text(
                              "إسم الدواء",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0x89000000),
                              ),
                            ),
                            const Text(
                              "تمت إضافته",
                              style: TextStyle(
                                color: Colors.black45,
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "الكمية :  37",
                                  style: TextStyle(
                                    color: clr,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
