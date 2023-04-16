// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:medh/pages/home_page.dart';
import 'package:medh/screens/welcom_screen.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'appointm2_screen.dart';
import 'appointment_screen.dart';

class HomeScreen extends StatelessWidget {
  List symptoms = [
    "الظهار",
    "السبل",
    "المركزي",
    "الدائري",
  ];
  List imgs = [
    "doctor1.jpg",
    "doctor2.jpg",
    "doctor3.jpg",
    "doctor4.jpg",
  ];
  bool shadowColor = false;
  double? scrolledUnderElevation;
  final clr = Color(0xFF7165D6);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 0, top: 2),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6,
                              spreadRadius: 4,
                            )
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.home_filled,
                                  color: Color(0xFF7165D6),
                                  size: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          spreadRadius: 4,
                        )
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: CircleAvatar(
                            radius: 15,
                            backgroundImage:
                                AssetImage("assets/images/icon1.png"),
                          ),
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
              SizedBox(height: 50),
              Center(
                child: Container(
                  height: 150,
                  width: double.infinity,
                  child: Carousel(
                    images: [
                      AssetImage("assets/images/doctor1.jpg"),
                      AssetImage("assets/images/doctor2.jpg"),
                      AssetImage("assets/images/doctor3.jpg"),
                    ],
                    dotSize: 15,
                    dotIncreaseSize: 1,
                    dotSpacing: 30,
                    dotColor: Colors.white,
                    dotBgColor: Colors.deepPurple.withOpacity(0.5),
                    indicatorBgPadding: 10,
                    boxFit: BoxFit.contain,
                    borderRadius: true,
                    radius: Radius.circular(30),
                    overlayShadow: true,
                    overlayShadowColors: Colors.grey,
                    overlayShadowSize: 0.5,
                  ),
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text(
                  "فلترة عرض الصيدليات حسب المنطقة",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
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
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        decoration: BoxDecoration(
                          color: Color(0xFFF4F6FA),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 4,
                              spreadRadius: 2,
                            )
                          ],
                        ),
                        child: Center(
                          child: Text(
                            symptoms[index],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text(
                  "صيدليات توفر غالباً",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
              ),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: 4,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Appointment2Screen(),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
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
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                            ),
                          ),
                          Text(
                            "عنوانها",
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Text("4.5",
                                  style: TextStyle(
                                    color: Colors.black45,
                                  ))
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
