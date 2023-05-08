import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_pro/carousel_pro.dart';

import 'package:medh/Theme/theme.dart';
import 'package:sizer/sizer.dart';
import 'orderscreen.dart';

class HomeScreen extends StatelessWidget {
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
    "icon1.png",
    "icon1.png",
    "icon1.png",
    "icon1.png",
    "icon1.png",
    "icon1.png",
    "icon1.png",
    "icon1.png",
  ];

  double? scrolledUnderElevation;

  HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 8),
          Center(
            child: SizedBox(
              height: 20.h,
              width: double.infinity.h,
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
            height: 5.3.h,
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
            padding: const EdgeInsets.only(right: 20),
            child: Text(
              "صيدليات توفر غالباً",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemCount: 12,
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
                  margin: const EdgeInsets.all(15),
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  decoration: BoxDecoration(
                    color: colors(context).color4,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x3C000000),
                        blurRadius: 4,
                        spreadRadius: 2,
                      )
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundImage:
                            AssetImage("assets/images/${imgs[index]}"),
                      ),
                      Text(
                        "إسم الصيدلية",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Text(
                        "عنوانها",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: colors(context).color2,
                            size: 2.h,
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
    );
  }
}
