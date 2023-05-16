// ID  -- >        2040750
// الصفحة الرئيسية للصيدلي

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medh/FUSER/Summary/Values/values.dart';
import 'package:medh/HomePage/Box_list_widget/box/box_container_view.dart';
import 'package:medh/Theme/theme.dart';
import 'package:medh/FUSER/screens/add_medcine.dart';
import 'package:medh/widgets/Buttons/primary_tab_buttons.dart';
import 'package:medh/widgets/Shapes/app_settings_icon.dart';

import '../Fuser_widgets/fuser_navbar_roots.dart';

import 'medicine_detils_home_screen.dart';

class FuserHomeScreen extends ConsumerStatefulWidget {
  const FuserHomeScreen({super.key});

  @override
  FuserHomeScreenState createState() => FuserHomeScreenState();
}

class FuserHomeScreenState extends ConsumerState<FuserHomeScreen> {
  final _settingsButtonTrigger = ValueNotifier(0);

  double? scrolledUnderElevation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppSpaces.verticalSpace20,
              SizedBox(
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const AddMedcineScreen(), // ID  -- >        2040744
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: colors(context).color1,
                          borderRadius: BorderRadius.circular(15),
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
                              padding: const EdgeInsets.all(3),
                              decoration: const BoxDecoration(
                                color: Colors.white54,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.add,
                                color: clr,
                                size: 15,
                              ),
                            ),
                            const SizedBox(height: 2),
                            const Center(
                              child: Text(
                                "إضافة دواء",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(height: 1),
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
                            builder: (context) =>
                                const FuserNavBarRoots(), // ID  -- >        2040712 // ID  -- >        2040712
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: colors(context).color4,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x47000000),
                              blurRadius: 4,
                              spreadRadius: 2,
                            )
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                color: colors(context).color3,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.home_filled,
                                color: colors(context).color1,
                                size: 15,
                              ),
                            ),
                            const SizedBox(height: 2),
                            const Text(
                              "تقارير",
                              style: TextStyle(
                                // color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 1),
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
              ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Text(
                  "فلترة الأدوية حسب ",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //tab indicators
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              PrimaryTabButton(
                                  buttonText: "أكثر مبيعاً",
                                  itemIndex: 0,
                                  notifier: _settingsButtonTrigger),
                              PrimaryTabButton(
                                  buttonText: "الإسم ",
                                  itemIndex: 1,
                                  notifier: _settingsButtonTrigger),
                              PrimaryTabButton(
                                  buttonText: "النوع",
                                  itemIndex: 2,
                                  notifier: _settingsButtonTrigger)
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 70),
                            child: Container(
                                alignment: Alignment.centerRight,
                                child: const AppSettingsIcon(
                                    // callback: ((),{_showDashboardSettings(context);}),
                                    )),
                          )
                        ]),
                  ),
                ],
              ),
              AppSpaces.verticalSpace10,
              Padding(
                padding: const EdgeInsets.only(left: 200),
                child: Text(
                  " متوفر",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const FuserMedicineDitlesScreen(), // ID  -- >        2040755
                      ),
                    );
                  },
                  child: Hero(
                    tag: "hero",
                    child: Column(
                      children: [
                        Column(
                          children: [
                            BoxContainerList(
                              cardTitle: "إسم الصنف ",
                              cardSubTitle: "شوية كلام يكتب هنا",
                              numberOfItems: "120",
                              cardDate: "2024/2/11 م",
                              imageUrl:
                                  "lib/FUSER/Summary/assets/green_pencil.png",
                              backgroundColor: HexColor.fromHex("7FBC69"),
                            ), // ID  -- >        2040706
                            BoxContainerList(
                              cardSubTitle: "شوية كلام يكتب هنا",
                              cardTitle: "إسم الصنف",
                              numberOfItems: "74",
                              cardDate: "2024/2/11 م",
                              imageUrl:
                                  "lib/FUSER/Summary/assets/orange_pencil.png",
                              backgroundColor: HexColor.fromHex("EFA17D"),
                            ), // ID  -- >        2040706
                            BoxContainerList(
                              cardSubTitle: "شوية كلام يكتب هنا",
                              cardTitle: "إسم الصنف ",
                              numberOfItems: "5",
                              cardDate: "2024/2/11 م",
                              imageUrl: "assets/images/icon.png",
                              backgroundColor: HexColor.fromHex("C395FC"),
                            ), // ID  -- >        2040706
                          ],
                        ),
                        Column(
                          children: [
                            BoxContainerList(
                              cardSubTitle: "شوية كلام يكتب هنا",
                              cardTitle: "إسم الصنف ",
                              numberOfItems: "24",
                              cardDate: "2024/2/11 م",
                              imageUrl: "lib/FUSER/Summary/assets/cone.png",
                              backgroundColor: HexColor.fromHex("EDA7FA"),
                            ), // ID  -- >        2040706
                            const BoxContainerList(
                              cardSubTitle: "شوية كلام يكتب هنا",
                              cardTitle: "إسم الصنف ",
                              numberOfItems: "80",
                              cardDate: "2024/2/11 م",
                              imageUrl: "assets/stickers/stic_10-17.png",
                              backgroundColor: Color(0xFFC44036),
                            ), // ID  -- >        2040706
                            const BoxContainerList(
                              cardSubTitle: "شوية كلام يكتب هنا",
                              cardTitle: "إسم الصنف ",
                              numberOfItems: "3",
                              cardDate: "2024/2/11 م",
                              imageUrl: "assets/images/Logo.png",
                              backgroundColor: Color(0xFF9B0A00),
                            ), // ID  -- >        2040706
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
