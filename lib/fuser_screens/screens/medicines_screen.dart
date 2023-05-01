// صفحة الأدوية

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medh/darkmod/theme.dart';
import 'package:medh/provider.dart';

import 'add_medcine.dart';
import 'medicine_detils2_screen.dart';

class FuserMedicineScreen extends ConsumerStatefulWidget {
  const FuserMedicineScreen({super.key});

  @override
  FuserMedicineScreenState createState() => FuserMedicineScreenState();
}

List imgs = [
  "doc2.jpg",
  "doc2.jpg",
  "doc2.jpg",
  "doc2.jpg",
  "doc2.jpg",
  "doc2.jpg",
];
const clr = Color(0xFF58329B);
bool shadowColor = false;
double? scrolledUnderElevation;

class FuserMedicineScreenState extends ConsumerState<FuserMedicineScreen> {
  @override
  Widget build(BuildContext context) {
    //  هذا عشان زر الرجوع
    return WillPopScope(
      onWillPop: () {
        //trigger leaving and use own data
        Navigator.pop(context, false);
        //we need to return a future
        return Future.value(true);
      },
      child: MaterialApp(
        localizationsDelegates: const [
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale("ar", "YE"), // OR Locale('ar', 'AE') OR Other RTL locales
        ],
        theme: getAppTheme(context, ref.watch(appThemeProvider)),
        debugShowCheckedModeBanner: false,
        home: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 60,
              scrolledUnderElevation: scrolledUnderElevation,
              shadowColor:
                  shadowColor ? Theme.of(context).colorScheme.shadow : clr,
              title: Padding(
                padding: const EdgeInsets.only(top: 0, bottom: 5),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: colors(context).color4,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x3C000000),
                            blurRadius: 4,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 300,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: "بحث",
                                  hintStyle: TextStyle(
                                    color: colors(context)
                                        .color6
                                        ?.withOpacity(0.5),
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          const Icon(
                            Icons.search,
                          ),
                          const Icon(
                            Icons.photo_camera,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            body: ListView(
              children: [
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                        padding: const EdgeInsets.only(right: 20, top: 5),
                        child: Text(
                          'الأدوية',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    " الأكثر طلباً",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 90,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 12),
                        width: 65,
                        height: 65,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x47000000),
                              spreadRadius: 2,
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        child: Stack(
                          textDirection: TextDirection.rtl,
                          children: [
                            Center(
                              child: SizedBox(
                                height: 65,
                                width: 65,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset(
                                    "assets/images/${imgs[index]}",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.all(4),
                              padding: const EdgeInsets.all(3),
                              height: 20,
                              width: 20,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.amber.shade200,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: Divider(
                    color: colors(context).color3,
                    thickness: 2,
                    height: 2.0,
                  ),
                ),
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 6,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: ListTile(
                          minVerticalPadding: 15,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const FuserMedicineDitles2Screen(),
                                ));
                          },
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(
                              "assets/images/${imgs[index]}",
                            ),
                          ),
                          title: const Text(
                            "إسم الدواء",
                          ),
                          subtitle: Text(
                            "وصف الدواء يتم كتابته هنا",
                            maxLines: 16,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          trailing: Text(
                            "12:30  : ساعة او تاريخ الإضافة",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
