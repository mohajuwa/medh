// صفحة تعديل دواء للصيدلي
// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:medh/fuser_screens/screens/fuser_home_screen.dart';

import '../small_screens/edit_home_medicine_done.dart';

class FuserEditMedcineScreen extends StatefulWidget {
  const FuserEditMedcineScreen({super.key});

  @override
  State<FuserEditMedcineScreen> createState() => _FuserEditMedcineScreenState();
}

class _FuserEditMedcineScreenState extends State<FuserEditMedcineScreen> {
  bool shadowColor = false;
  double? scrolledUnderElevation;
  final clr = const Color(0xFF58329B);
  bool passTooggle = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'El_Messiri'),
      debugShowCheckedModeBanner: false,
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: ListView(
            children: [
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Image.asset(
                  "assets/images/icon1.png",
                  height: 100,
                ),
              ),
              const Divider(
                thickness: 2.9,
                height: 2.0,
              ),
              const SizedBox(height: 5),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "إسم الدواء",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.medical_information),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "وصفة",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.info),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "الكمية",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.numbers),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "الكمية",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.numbers),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "الكمية",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.numbers),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: double.infinity,
                  child: Material(
                    color: const Color(0xFF58329B),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(
                          context,
                        );
                      },
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                        child: Center(
                          child: Text(
                            "تعديل",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
