//  ID  -- >        2040757

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AvaliablePupScreen extends StatelessWidget {
  List imgs = [
    "doc2.jpg",
    "doc2.jpg",
    "doc2.jpg",
    "doc2.jpg",
    "doc2.jpg",
    "doc2.jpg",
  ];
  final clr = const Color(0xFF58329B);

  double? scrolledUnderElevation;

  AvaliablePupScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
        // child: Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     SizedBox(height: 40),
        //     Padding(
        //       padding: EdgeInsets.symmetric(horizontal: 20),
        //       child: Text(
        //         "الأدوية",
        //         style: TextStyle(
        //           fontSize: 28,
        //           fontWeight: FontWeight.w500,
        //         ),
        //       ),
        //     ),
        //     SizedBox(height: 30),
        //     Padding(
        //       padding: EdgeInsets.symmetric(horizontal: 15),
        //       child: Container(
        //         padding: EdgeInsets.symmetric(horizontal: 15),
        //         decoration: BoxDecoration(
        //           color: Colors.white,
        //           borderRadius: BorderRadius.circular(10),
        //           boxShadow: [
        //             BoxShadow(
        //               color: const Color(0x47000000),
        //               blurRadius: 10,
        //               spreadRadius: 1,
        //             ),
        //           ],
        //         ),
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //           children: [
        //             Container(
        //               width: 300,
        //               child: Padding(
        //                 padding: EdgeInsets.symmetric(horizontal: 15),
        //                 child: TextFormField(
        //                   decoration: InputDecoration(
        //                     hintText: "بحث",
        //                     border: InputBorder.none,
        //                   ),
        //                 ),
        //               ),
        //             ),
        //             Icon(
        //               Icons.search,
        //               color: Color(0xFF58329B),
        //             )
        //           ],
        //         ),
        //       ),
        //     ),
        //     SizedBox(height: 20),
        //     Padding(
        //       padding: const EdgeInsets.symmetric(horizontal: 20),
        //       child: Text(
        //         " الأكثر طلباً",
        //         style: TextStyle(
        //           fontSize: 20,
        //           fontWeight: FontWeight.w500,
        //         ),
        //       ),
        //     ),
        //     SizedBox(height: 10),
        //     SizedBox(
        //       height: 90,
        //       child: ListView.builder(
        //         scrollDirection: Axis.horizontal,
        //         itemCount: 6,
        //         shrinkWrap: true,
        //         itemBuilder: (context, index) {
        //           return Container(
        //             margin: EdgeInsets.symmetric(horizontal: 12),
        //             width: 65,
        //             height: 65,
        //             decoration: BoxDecoration(
        //               shape: BoxShape.circle,
        //               color: Colors.white,
        //               boxShadow: [
        //                 BoxShadow(
        //                   color: const Color(0x47000000),
        //                   spreadRadius: 1,
        //                   blurRadius: 10,
        //                 ),
        //               ],
        //             ),
        //             child: Stack(
        //               textDirection: TextDirection.rtl,
        //               children: [
        //                 Center(
        //                   child: Container(
        //                     height: 65,
        //                     width: 65,
        //                     child: ClipRRect(
        //                       borderRadius: BorderRadius.circular(30),
        //                       child: Image.asset(
        //                         "assets/images/${imgs[index]}",
        //                         fit: BoxFit.cover,
        //                       ),
        //                     ),
        //                   ),
        //                 ),
        //                 Container(
        //                   margin: EdgeInsets.all(4),
        //                   padding: EdgeInsets.all(3),
        //                   height: 20,
        //                   width: 20,
        //                   decoration: BoxDecoration(
        //                     color: Colors.white,
        //                     shape: BoxShape.circle,
        //                   ),
        //                   child: Container(
        //                     decoration: BoxDecoration(
        //                       color: Colors.green,
        //                       shape: BoxShape.circle,
        //                     ),
        //                   ),
        //                 )
        //               ],
        //             ),
        //           );
        //         },
        //       ),
        //     ),
        //     SizedBox(height: 20),
        //     Padding(
        //       padding: const EdgeInsets.symmetric(horizontal: 20),
        //       child: Text(
        //         " الأدوية المضافة مسبقاً ",
        //         style: TextStyle(
        //           fontSize: 20,
        //           color: Colors.black45,
        //           fontWeight: FontWeight.w500,
        //         ),
        //       ),
        //     ),
        //     SizedBox(height: 10),
        //     ListView.builder(
        //         physics: NeverScrollableScrollPhysics(),
        //         itemCount: 6,
        //         shrinkWrap: true,
        //         itemBuilder: (context, index) {
        //           return Padding(
        //             padding: const EdgeInsets.only(bottom: 10),
        //             child: ListTile(
        //               minVerticalPadding: 15,
        //               onTap: () {
        //                 Navigator.push(
        //                     context,
        //                     MaterialPageRoute(
        //                       builder: (context) => FuserAppointme2ntScreen(),
        //                     ));
        //               },
        //               leading: CircleAvatar( backgroundColor: Colors.transparent,
        //                 radius: 30,
        //                 backgroundImage: AssetImage(
        //                   "assets/images/${imgs[index]}",
        //                 ),
        //               ),
        //               title: Text(
        //                 "إسم الدواء",
        //                 style: TextStyle(
        //                   fontSize: 18,
        //                   fontWeight: FontWeight.w500,
        //                 ),
        //               ),
        //               subtitle: Text(
        //                 "وصف الدواء يتم كتابته هنا",
        //                 maxLines: 16,
        //                 overflow: TextOverflow.ellipsis,
        //                 style: TextStyle(
        //                   fontSize: 16,
        //                   color: const Color(0x89000000),
        //                 ),
        //               ),
        //               trailing: Text(
        //                 "12:30  : ساعة او تاريخ الإضافة",
        //                 style: TextStyle(
        //                   fontSize: 15,
        //                   color: const Color(0x89000000),
        //                 ),
        //               ),
        //             ),
        //           );
        //         })
        //   ],
        // ),
        );
  }
}
