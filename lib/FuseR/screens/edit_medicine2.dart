// صفحة تعديل دواء للصيدلي
// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medh/Theme/theme.dart';
import 'package:medh/provider.dart';

import '../small_screens/edit2_medicine_done.dart';

class FuserEdit2MedcineScreen extends ConsumerStatefulWidget {
  const FuserEdit2MedcineScreen({super.key});

  @override
  FuserEdit2MedcineScreenState createState() => FuserEdit2MedcineScreenState();
}

double? scrolledUnderElevation;
const clr = Color(0xFF58329B);
bool passTooggle = true;

class FuserEdit2MedcineScreenState
    extends ConsumerState<FuserEdit2MedcineScreen> {
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
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Image.asset(
                  "assets/images/icon1.png",
                  height: 100,
                ),
              ),
              const SizedBox(height: 10),
              const Divider(
                thickness: 2.9,
                height: 2.0,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    label: Text(
                      "إسم الدواء",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    prefixIcon: Icon(
                      Icons.medical_information,
                      color: colors(context).color3,
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    label: Text(
                      "وصفة",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    prefixIcon: Icon(
                      Icons.info,
                      color: colors(context).color3,
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    label: Text(
                      "الكمية",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    prefixIcon: Icon(
                      Icons.numbers,
                      color: colors(context).color3,
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    label: Text(
                      "الكمية",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    prefixIcon: Icon(
                      Icons.numbers,
                      color: colors(context).color3,
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    label: Text(
                      "الكمية",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    prefixIcon: Icon(
                      Icons.numbers,
                      color: colors(context).color3,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: double.infinity,
                  child: Material(
                    color: colors(context).color1,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    FuserEdit2MedicineDone()));
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
