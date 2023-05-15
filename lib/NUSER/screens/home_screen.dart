// ID  -- >    2040682
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:medh/Theme/theme.dart';
import 'package:medh/Values/values.dart';
import 'package:medh/provider.dart';
import 'package:medh/widgets/Buttons/primary_tab_buttons.dart';
import 'package:medh/widgets/Shapes/app_settings_icon.dart';
import 'orderscreen.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends ConsumerState<HomeScreen> {
  final _settingsButtonTrigger = ValueNotifier(0);

  List imgs = [
    "lined heart.png",
    "lined heart.png",
    "lined heart.png",
    "lined heart.png",
    "lined heart.png",
    "lined heart.png",
    "lined heart.png",
    "lined heart.png",
    "lined heart.png",
    "lined heart.png",
    "lined heart.png",
    "lined heart.png",
  ];

  get isDarkTheme => ref.watch(appThemeProvider);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 200,
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
                  dotBgColor: colors(context).color2?.withOpacity(0.5),
                  indicatorBgPadding: 6,
                  boxFit: BoxFit.fitHeight,
                  borderRadius: true,
                  radius: const Radius.circular(40),
                  overlayShadow: true,
                  overlayShadowColors:
                      colors(context).color1?.withOpacity(0.10),
                  overlayShadowSize: 0.2,
                ),
              ),
              AppSpaces.verticalSpace10,
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
                              buttonText: "الكل",
                              itemIndex: 0,
                              notifier: _settingsButtonTrigger),
                          PrimaryTabButton(
                              buttonText: "السبل ",
                              itemIndex: 1,
                              notifier: _settingsButtonTrigger),
                          PrimaryTabButton(
                              buttonText: "الظهار",
                              itemIndex: 2,
                              notifier: _settingsButtonTrigger)
                        ],
                      ),
                      Container(
                          alignment: Alignment.centerRight,
                          child: const AppSettingsIcon(
                              // callback: ((),{_showDashboardSettings(context);}),
                              ))
                    ]),
              ),
              AppSpaces.verticalSpace10,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "صيدليات توفر غالباً",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Divider(
                  color: colors(context).color3,
                  thickness: 2,
                  height: 2.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisExtent: 160,
                    mainAxisSpacing: 2,
                  ),
                  itemCount: 12,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      hoverColor: colors(context).color3,
                      focusColor: colors(context).color5,
                      splashColor: colors(context).color2,
                      overlayColor: MaterialStateColor.resolveWith(
                        (states) => isDarkTheme
                            ? Colors.deepPurple
                            : const Color(0xD09B1642),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const OrderScreen(), // ID  -- >    2040686
                          ),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(12.0),
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        decoration: BoxDecoration(
                          color: colors(context).color4,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x3C000000),
                              blurRadius: 1.5,
                              spreadRadius: 1,
                            )
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const SizedBox(height: 3),
                            Container(
                              width: 100,
                              height: 35,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                                color: colors(context).color4,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0x3C000000),
                                    blurRadius: 1.5,
                                    spreadRadius: 1,
                                  )
                                ],
                              ),
                              child: ClipRRect(
                                child: Image(
                                  image: AssetImage(
                                      "assets/images/${imgs[index]}"),
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
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
                                  size: 12,
                                ),
                                Text(
                                  "4.5",
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ],
                            ),
                            Container(
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(5.0),
                                ),
                                color: colors(context).color1,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0x3C000000),
                                    blurRadius: 1.5,
                                    spreadRadius: 1,
                                  )
                                ],
                              ),
                              child: const Center(
                                child: Text(
                                  "تفاصيل",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
