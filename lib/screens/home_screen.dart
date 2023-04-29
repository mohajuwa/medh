import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medh/provider.dart';

import '../darkmod/theme.dart';
import 'orderscreen.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

List symptoms = [
  "الظهار",
  "السبل",
  "المركزي",
  "الدائري",
];
List imgs = [
  "icon1.png",
  "icon1.png",
  "icon1.png",
  "icon1.png",
];
bool shadowColor = false;
double? scrolledUnderElevation;
const clr = Color(0xFF58329B);

class HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getAppTheme(context, ref.watch(appThemeProvider)),
      debugShowCheckedModeBanner: false,
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: ListView(
            children: [
              const SizedBox(height: 8),
              Center(
                child: SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: Carousel(
                    images: const [
                      AssetImage("assets/stickers/stic_18-30.png"),
                      AssetImage("assets/stickers/stic4.png"),
                      AssetImage("assets/stickers/stic_f-50-80.png"),
                    ],
                    dotSize: 15,
                    dotIncreaseSize: 1.2,
                    dotSpacing: 30,
                    dotColor: colors(context).color3?.withOpacity(0.4),
                    dotIncreasedColor: colors(context).color4,
                    dotBgColor: colors(context).color1?.withOpacity(0.5),
                    indicatorBgPadding: 6,
                    boxFit: BoxFit.fitHeight,
                    borderRadius: true,
                    radius: const Radius.circular(40),
                    overlayShadow: true,
                    overlayShadowColors: colors(context).color4,
                    overlayShadowSize: 0.2,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text(
                  "فلترة عرض الصيدليات حسب المنطقة",
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
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ),
                      );
                    }),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text(
                  "صيدليات توفر غالباً",
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
                          builder: (context) => const OrderScreen(),
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
                            "إسم الصيدلية",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Text(
                            "عنوانها",
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                color: colors(context).color2,
                              ),
                              Text(
                                "4.5",
                                style: Theme.of(context).textTheme.bodySmall,
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
    );
  }
}
