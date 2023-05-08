// // ignore_for_file: prefer_typing_uninitialized_variables

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:medh/Theme/theme.dart';

// import '../navbar_roots.dart';

// class MyAppBar extends StatelessWidget {
//   String inputText;

//   IconData iCon;

//   MyAppBar({
//     super.key,
//     required this.inputText,
//     this.iCon = Icons.switch_left_outlined,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       toolbarHeight: 55,
//       title: Center(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 1),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(right: 0, top: 2),
//                 child: InkWell(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => const NavBarRoots(),
//                       ),
//                     );
//                   },
//                   child: Container(
//                     padding: const EdgeInsets.all(5),
//                     decoration: BoxDecoration(
//                       color: colors(context).color4,
//                       borderRadius: BorderRadius.circular(18),
//                       boxShadow: const [
//                         BoxShadow(
//                           color: Color(0x47000000),
//                           blurRadius: 4,
//                           spreadRadius: 2,
//                         )
//                       ],
//                     ),
//                     child: Center(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Container(
//                             padding: const EdgeInsets.all(3),
//                             decoration: const BoxDecoration(
//                               shape: BoxShape.circle,
//                             ),
//                             child: const Center(
//                               child: Icon(Icons.add_circle_outline_sharp),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               Text(
//                 " شعار البرنامج -->",
//                 style: Theme.of(context).textTheme.bodyLarge,
//               ),
//               Container(
//                 padding: const EdgeInsets.all(8),
//                 decoration: BoxDecoration(
//                   color: colors(context).color4,
//                   borderRadius: BorderRadius.circular(18),
//                   boxShadow: const [
//                     BoxShadow(
//                       color: Color(0x47000000),
//                       blurRadius: 4,
//                       spreadRadius: 2,
//                     )
//                   ],
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       decoration: const BoxDecoration(
//                         shape: BoxShape.circle,
//                       ),
//                       child: const CircleAvatar(
//                         radius: 15,
//                         backgroundImage: AssetImage("assets/images/icon1.png"),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
