// ID  -- >    2040682
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medh/Data/data_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:medh/Theme/theme.dart';
import 'package:medh/Values/values.dart';
import 'package:medh/provider.dart';
import 'orderscreen.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends ConsumerState<HomeScreen> {
  final _settingsButtonTrigger = ValueNotifier(0);

  List imgs = [
    "Logo.png",
    "Logo.png",
    "Logo.png",
    "Logo.png",
    "Logo.png",
    "Logo.png",
    "Logo.png",
    "Logo.png",
    "Logo.png",
    "Logo.png",
    "Logo.png",
    "Logo.png",
  ];

  get isDarkTheme => ref.watch(appThemeProvider);

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = imgList
        .map((item) => ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            child: Stack(
              children: <Widget>[
                Image.asset(
                  item,
                  fit: BoxFit.fitHeight,
                  width: 1000.0,
                ),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0x739B1642),
                          Color(0x00683AB7),
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                    child: Text(
                      'No. ${imgList.indexOf(item)} image',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            )))
        .toList();
    return SafeArea(
      child: ListView(
        children: [
          Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                ),
                items: imageSliders,
              ),
              AppSpaces.verticalSpace10,
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.all(20),
              //       child: Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             //tab indicators
              //             Row(
              //               mainAxisAlignment: MainAxisAlignment.start,
              //               children: [
              //                 PrimaryTabButton(
              //                     buttonText: "الكل",
              //                     itemIndex: 0,
              //                     notifier: _settingsButtonTrigger),
              //                 PrimaryTabButton(
              //                     buttonText: "السبل ",
              //                     itemIndex: 1,
              //                     notifier: _settingsButtonTrigger),
              //                 PrimaryTabButton(
              //                     buttonText: "الظهار",
              //                     itemIndex: 2,
              //                     notifier: _settingsButtonTrigger)
              //               ],
              //             ),
              //             Padding(
              //               padding: const EdgeInsets.only(right: 70),
              //               child: Container(
              //                   alignment: Alignment.centerRight,
              //                   child: const AppSettingsIcon(
              //                       // callback: ((),{_showDashboardSettings(context);}),
              //                       )),
              //             )
              //           ]),
              //     ),
              //   ],
              // ),
              AppSpaces.verticalSpace10,
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 200),
                    child: Text(
                      "صيدليات توفر غالباً",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 500,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
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
                                color: Color(0x3B000000),
                                blurRadius: 1.5,
                                spreadRadius: 1,
                              )
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
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
                                      color: Color(0x3B000000),
                                      blurRadius: 1,
                                      spreadRadius: 0.5,
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
                              // Row(
                              //   mainAxisSize: MainAxisSize.min,
                              //   mainAxisAlignment: MainAxisAlignment.center,
                              //   children: [
                              //     Icon(
                              //       Icons.star,
                              //       color: colors(context).color2,
                              //       size: 12,
                              //     ),
                              //     Text(
                              //       "4.5",
                              //       style:
                              //           Theme.of(context).textTheme.bodySmall,
                              //     ),
                              //   ],
                              // ),
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
