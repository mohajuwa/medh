import 'package:flutter/material.dart';
import 'package:medh/screens/home_screen.dart';

import '../widgets/navbar_roots.dart';

class Custom2AddScreen extends StatefulWidget {
  const Custom2AddScreen({super.key});

  @override
  State<Custom2AddScreen> createState() => _Custom2AddScreenState();
}

bool shadowColor = false;
double? scrolledUnderElevation;
const clr = Color(0xFF58329B);
bool passTooggle = true;

class _Custom2AddScreenState extends State<Custom2AddScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'El_Messiri'),
      debugShowCheckedModeBanner: false,
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(70),
            child: AppBar(
              backgroundColor: clr,
              leadingWidth: 30,
              title: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Row(children: const [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("assets/images/icon1.png"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text(
                      "إسم الصيدلية",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )
                ]),
              ),
              actions: const [
                Padding(
                  padding: EdgeInsets.only(top: 8, right: 20),
                  child: Icon(
                    Icons.call,
                    color: Colors.white,
                    size: 26,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8, right: 10),
                  child: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                    size: 26,
                  ),
                ),
              ],
            ),
          ),
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NavBarRoots(),
                          ),
                        );
                      },
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                        child: Center(
                          child: Text(
                            "طلب",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
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
