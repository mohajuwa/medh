// الصفحة الرئيسية للصيدلي

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/utils.dart';
import 'package:medh/Theme/theme.dart';
import 'package:medh/FuseR/screens/add_medcine.dart';
import 'package:medh/provider.dart';

import '../widgets/fuser_navbar_roots.dart';

import 'medicine_detils_home_screen.dart';

class FuserHomeScreen extends ConsumerStatefulWidget {
  const FuserHomeScreen({super.key});

  @override
  FuserHomeScreenState createState() => FuserHomeScreenState();
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

double? scrolledUnderElevation;
const clr = Color(0xFF58329B);

class FuserHomeScreenState extends ConsumerState<FuserHomeScreen> {
  @override
  Widget build(BuildContext context) {
    //  هذا عشان زر الرجوع

    return WillPopScope(
      onWillPop: () async => true,
      child: MaterialApp(
        theme: getAppTheme(context, ref.watch(appThemeProvider)),
        debugShowCheckedModeBanner: false,
        home: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
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
                          color: colors(context).color1,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x47000000),
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
                                color: Colors.white54,
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
                                color: colors(context).color2,
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
                          color: colors(context).color4,
                          borderRadius: BorderRadius.circular(18),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x47000000),
                              blurRadius: 1.5,
                              spreadRadius: 1,
                            )
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: colors(context).color3,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.home_filled,
                                color: colors(context).color1,
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
                            Text(
                              "ما تم طلبه بكثرة ",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Text(
                    "فلترة الأدوية حسب ",
                    style: Theme.of(context).textTheme.titleMedium,
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
                            color: colors(context).color4,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0x3C000000),
                                blurRadius: 4,
                                spreadRadius: 2,
                              )
                            ],
                          ),
                          child: Center(
                            child: Text(
                              symptoms[index],
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ),
                        );
                      }),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Text(
                    " متوفر",
                    style: Theme.of(context).textTheme.titleMedium,
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
                          color: colors(context).color4,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x3C000000),
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
                            Text(
                              "إسم الدواء",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            Text(
                              "تمت إضافته",
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "الكمية :  37",
                                  style: TextStyle(
                                    color: colors(context).color1,
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
