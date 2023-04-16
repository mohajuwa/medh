// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

import 'fuser_appoint2_screen.dart';
import 'fuser_chat_screen.dart';

class FuserMessagesScreen extends StatelessWidget {
  List imgs = [
    "doc2.jpg",
    "doc2.jpg",
    "doc2.jpg",
    "doc2.jpg",
    "doc2.jpg",
    "doc2.jpg",
  ];
  final clr = Color(0xFF7165D6);
  bool shadowColor = false;
  double? scrolledUnderElevation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        scrolledUnderElevation: scrolledUnderElevation,
        shadowColor: shadowColor ? Theme.of(context).colorScheme.shadow : clr,
        backgroundColor: Colors.white,
        title: Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 0, top: 5, left: 160),
                child: Text(
                  'الإستعلام عن الأدوية',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 300,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "إستعلام",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.search,
                      color: Color(0xFF7165D6),
                    ),
                    Icon(
                      Icons.photo_camera,
                      color: Color(0xFF7165D6),
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
          SizedBox(height: 3),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              " الأكثر طلباً",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 90,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 12),
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: Stack(
                    textDirection: TextDirection.rtl,
                    children: [
                      Center(
                        child: Container(
                          height: 65,
                          width: 65,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              "assets/images/${imgs[index]}",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(4),
                        padding: EdgeInsets.all(3),
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.amber.shade200,
                            shape: BoxShape.circle,
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 10),
          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 6,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: ListTile(
                    minVerticalPadding: 15,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FuserAppointme2ntScreen(),
                          ));
                    },
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                        "assets/images/${imgs[index]}",
                      ),
                    ),
                    title: Text(
                      "إسم الدواء",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "وصف الدواء يتم كتابته هنا",
                      maxLines: 16,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                    trailing: Text(
                      "12:30  : ساعة او تاريخ الإضافة",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                );
              })
        ],
      ),
    );
  }
}
