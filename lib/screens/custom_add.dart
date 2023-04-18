// ignore_for_file: prefer_const_constructors

import 'package:custom_clippers/custom_clippers.dart';

import 'package:flutter/material.dart';
import 'package:medh/screens/home_screen.dart';

import '../pages/home_page.dart';
import 'small_screens/custom_add_done.dart';

class CustomAddScreen extends StatelessWidget {
  bool shadowColor = false;
  double? scrolledUnderElevation;
  final clr = Color(0xFF58329B);
  bool passTooggle = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'El_Messiri'),
      debugShowCheckedModeBanner: false,
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(70),
            child: AppBar(
              backgroundColor: clr,
              leadingWidth: 30,
              title: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Row(children: [
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
              actions: [
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
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.all(20),
                child: Image.asset(
                  "assets/images/icon1.png",
                  height: 100,
                ),
              ),
              Divider(
                thickness: 2.9,
                height: 2.0,
              ),
              SizedBox(height: 5),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "إسم الدواء",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.medical_information),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "وصفة",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.info),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "الكمية",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.numbers),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "الكمية",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.numbers),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "الكمية",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.numbers),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: double.infinity,
                  child: Material(
                    color: Color(0xFF58329B),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ),
                        );
                      },
                      child: Padding(
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

//   final clr = Color(0xFF58329B);
//   final clr1 = Color(0xFFE1E1E2);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding: EdgeInsets.only(right: 80),
//           child: ClipPath(
//             clipper: UpperNipMessageClipper(MessageType.receive),
//             child: Container(
//               padding: EdgeInsets.all(20),
//               decoration: BoxDecoration(
//                 color: clr1,
//               ),
//               child: Text(
//                 "مرحبا يا نقيب ، والله انها  شغلة ومشفالة",
//                 style: TextStyle(
//                   fontSize: 16,
//                 ),
//               ),
//             ),
//           ),
//         ),
//         Container(
//           alignment: Alignment.centerRight,
//           child: Padding(
//             padding: EdgeInsets.only(top: 20, left: 80),
//             child: ClipPath(
//               clipper: LowerNipMessageClipper(MessageType.send),
//               child: Container(
//                 padding:
//                     EdgeInsets.only(left: 20, top: 10, bottom: 25, right: 20),
//                 decoration: BoxDecoration(
//                   color: clr,
//                 ),
//                 child: Text(
//                   "وانت تساكي ان الواجهات سهلة ، هههههههه ، ابلع ما ذلحين",
//                   style: TextStyle(
//                     fontSize: 16,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }
