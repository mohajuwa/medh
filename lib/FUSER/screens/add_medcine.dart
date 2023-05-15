// ID  -- >        2040744

// صفحة إضافة دواء للصيدلي
// ID  -- >        2040745

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medh/FUSER/small_screens/add_medicine_done.dart';
import 'package:medh/Theme/theme.dart';
import 'package:medh/provider.dart';

class AddMedcineScreen extends ConsumerStatefulWidget {
  const AddMedcineScreen({super.key});

  @override
  AddMedcineScreenState createState() => AddMedcineScreenState();
}

class AddMedcineScreenState extends ConsumerState<AddMedcineScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getAppTheme(context, ref.watch(appThemeProvider)),
      debugShowCheckedModeBanner: false,
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: [
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Image.asset(
                    "assets/images/Logo.png",
                    height: 100,
                  ),
                ),
                const SizedBox(height: 10),
                Divider(
                  thickness: 2.9,
                  height: 2.0,
                  color: colors(context).colorWhiteToBlack,
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const FuserAddMedicineDone(), // ID  -- >        2040741
                            ),
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 40),
                          child: Center(
                            child: Text(
                              "إضافة",
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
                Padding(
                  padding: const EdgeInsets.all(100),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                        color: colors(context).color1,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
