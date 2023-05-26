// ID  -- >        2040746
// صفحة تعديل دواء للصيدلي
// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:medh/FUSER/small_screens/edit_medicine_done.dart';
import 'package:medh/HomePage/Box_list_widget/listContainer/list_view.dart';
import 'package:medh/Theme/theme.dart';

class FuserEdit2MedcineScreen extends StatelessWidget {
  final ListsContainer medsFuserEdit;

  const FuserEdit2MedcineScreen({
    super.key,
    required this.medsFuserEdit,
  });

  @override
  Widget build(BuildContext context) {
    final TextEditingController? controller;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: medsFuserEdit.backgroundColor,
        body: SingleChildScrollView(
          child: ListBody(
            children: [
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 360,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: const Icon(
                                  Icons.arrow_back_ios_new,
                                  color: Colors.white70,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: const Icon(
                                  Icons.more_vert,
                                  color: Colors.white70,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: colors(context).color4,
                            radius: 70,
                            backgroundImage: AssetImage(medsFuserEdit.imageUrl),
                          ),
                          const SizedBox(height: 15),
                          Text(
                            medsFuserEdit.cardTitle,
                            style: const TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            medsFuserEdit.cardSubTitle,
                            style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          const SizedBox(height: 15),
                          const Divider(
                            thickness: 2.9,
                            height: 2.0,
                          ),
                          const SizedBox(height: 10),
                          Container(
                            width: 360,
                            decoration: BoxDecoration(
                              color: colors(context).color4,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(90),
                              ),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 15),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: const OutlineInputBorder(),
                                      label: Text(
                                        "إسم الدواء",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium,
                                      ),
                                      prefixText: medsFuserEdit.cardTitle,
                                      prefixIcon: Icon(
                                        Icons.medical_information,
                                        color: colors(context).color3,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 15),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: const OutlineInputBorder(),
                                      label: Text(
                                        "وصفة",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium,
                                      ),
                                      prefixIcon: Icon(
                                        Icons.info,
                                        color: colors(context).color3,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 15),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: const OutlineInputBorder(),
                                      label: Text(
                                        "الكمية",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium,
                                      ),
                                      prefixIcon: Icon(
                                        Icons.numbers,
                                        color: colors(context).color3,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 15),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: const OutlineInputBorder(),
                                      label: Text(
                                        "الكمية",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium,
                                      ),
                                      prefixIcon: Icon(
                                        Icons.numbers,
                                        color: colors(context).color3,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 15),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: const OutlineInputBorder(),
                                      label: Text(
                                        "الكمية",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium,
                                      ),
                                      prefixIcon: Icon(
                                        Icons.numbers,
                                        color: colors(context).color3,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: Icon(
                                              Icons.arrow_back,
                                              color: colors(context).color1,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                width: 200,
                                                height: 50,
                                                child: Material(
                                                  color: colors(context).color1,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  child: InkWell(
                                                    onTap: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: ((context) =>
                                                              const FuserEditMedicineDone()), // ID  -- >        2040742
                                                        ),
                                                      );
                                                    },
                                                    child: Container(
                                                      width: 200,
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          vertical: 10),
                                                      decoration: BoxDecoration(
                                                        color: colors(context)
                                                            .color1,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12),
                                                      ),
                                                      child: const Center(
                                                        child: Text(
                                                          "تعديل",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
