import 'package:flutter/material.dart';
import 'package:medh/pages/home_page.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'appointm2_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
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

class _HomeScreenState extends State<HomeScreen> {
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
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 0, top: 2),
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
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x1F000000),
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
                                shape: BoxShape.circle,
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.home_filled,
                                  color: Color(0xFF58329B),
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
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x1F000000),
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
                            shape: BoxShape.circle,
                          ),
                          child: const CircleAvatar(
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
                    dotIncreaseSize: 1,
                    dotSpacing: 30,
                    dotColor: Colors.white,
                    dotBgColor: Colors.deepPurple.withOpacity(0.5),
                    indicatorBgPadding: 6,
                    boxFit: BoxFit.fitHeight,
                    borderRadius: true,
                    radius: const Radius.circular(40),
                    overlayShadow: true,
                    overlayShadowColors: Colors.grey,
                    overlayShadowSize: 0.2,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              const Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text(
                  "فلترة عرض الصيدليات حسب المنطقة",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0x89000000),
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
                        margin: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF4F6FA),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x1F000000),
                              blurRadius: 4,
                              spreadRadius: 2,
                            )
                          ],
                        ),
                        child: Center(
                          child: Text(
                            symptoms[index],
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0x89000000),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text(
                  "صيدليات توفر غالباً",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0x89000000),
                  ),
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
                          builder: (context) => Appointment2Screen(),
                        ),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x1F000000),
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
                          const Text(
                            "إسم الصيدلية",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0x89000000),
                            ),
                          ),
                          const Text(
                            "عنوانها",
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
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
