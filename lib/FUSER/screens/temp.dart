// //  ID  -- >        2040759
// // صفحة الأدوية

// import 'package:flutter/material.dart';
// import 'package:medh/HomePage/Box_list_widget/listContainer/list_view.dart';
// import 'package:medh/widgets/Buttons/primary_tab_buttons.dart';
// import 'package:medh/widgets/Forms/search_box_nuser.dart';
// import 'package:medh/widgets/Shapes/app_settings_icon.dart';

// import 'add_medcine.dart';
// import 'package:medh/Values/values.dart';

// import 'edit_medicine2.dart';

// // ignore: must_be_immutable
// class FuserMedicineScreen extends StatelessWidget {
//   FuserMedicineScreen({super.key});
//   final _searchController = TextEditingController();
//   final _settingsButtonTrigger = ValueNotifier(0);
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
//       child: ListView(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SizedBox(
//                 width: 350,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Row(
//                       children: [
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Container(
//                               width: 300,
//                               height: 60,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                               child: SearchBox(
//                                   placeholder: 'إستعلام',
//                                   controller: _searchController),
//                             ),
//                           ],
//                         ),
//                         Container(
//                           padding: const EdgeInsets.only(top: 20, right: 10),
//                           height: 60,
//                           child: Text("إلغاء",
//                               textAlign: TextAlign.right,
//                               style: TextStyle(
//                                   color: HexColor.fromHex("616575"),
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.bold)),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           AppSpaces.verticalSpace10,
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Column(
//                 children: [
//                   Row(
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           PrimaryTabButton(
//                               buttonText: "الكل",
//                               itemIndex: 0,
//                               notifier: _settingsButtonTrigger),
//                           PrimaryTabButton(
//                               buttonText: "الطلب ",
//                               itemIndex: 1,
//                               notifier: _settingsButtonTrigger),
//                           PrimaryTabButton(
//                               buttonText: "الكمية",
//                               itemIndex: 2,
//                               notifier: _settingsButtonTrigger),
//                           Padding(
//                             padding: const EdgeInsets.only(right: 70),
//                             child: Container(
//                                 alignment: Alignment.centerRight,
//                                 child: const AppSettingsIcon(
//                                     // callback: ((),{_showDashboardSettings(context);}),
//                                     )),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ],
//           ),
//           AppSpaces.verticalSpace20,
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               InkWell(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) =>
//                           const AddMedcineScreen(), // ID  -- >        2040744
//                     ),
//                   );
//                 },
//                 child: Container(
//                   padding: const EdgeInsets.only(left: 200, top: 5),
//                   child: Text(
//                     'الأدوية',
//                     style: Theme.of(context).textTheme.titleLarge,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 20),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: InkWell(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) =>
//                         const FuserEdit2MedcineScreen(), // ID  -- >        2040746
//                   ),
//                 );
//               },
//               child: Hero(
//                 tag: "hero",
//                 child: Column(
//                   children: [
//                     Column(
//                       children: [
//                         ListsContainer(
//                           cardTitle: "إسم الصنف ",
//                           cardSubTitle: "شوية كلام يكتب هنا",
//                           numberOfItems: "120",
//                           cardDate: "2024/2/11 م",
//                           imageUrl: "lib/FUSER/Summary/assets/green_pencil.png",
//                           backgroundColor: HexColor.fromHex("7FBC69"),
//                         ), //  ID  -- >        2040703
//                         ListsContainer(
//                           cardSubTitle: "شوية كلام يكتب هنا",
//                           cardTitle: "إسم الصنف",
//                           numberOfItems: "74",
//                           cardDate: "2024/2/11 م",
//                           imageUrl:
//                               "lib/FUSER/Summary/assets/orange_pencil.png",
//                           backgroundColor: HexColor.fromHex("EFA17D"),
//                         ),
//                         ListsContainer(
//                           cardSubTitle: "شوية كلام يكتب هنا",
//                           cardTitle: "إسم الصنف ",
//                           numberOfItems: "23",
//                           cardDate: "2024/2/11 م",
//                           imageUrl: "assets/images/icon.png",
//                           backgroundColor: HexColor.fromHex("C395FC"),
//                         ), // ID  -- >        2040703
//                         ListsContainer(
//                           cardSubTitle: "شوية كلام يكتب هنا",
//                           cardTitle: "إسم الصنف ",
//                           numberOfItems: "15",
//                           cardDate: "2024/2/11 م",
//                           imageUrl: "lib/FUSER/Summary/assets/cone.png",
//                           backgroundColor: HexColor.fromHex("EDA7FA"),
//                         ),
//                         const ListsContainer(
//                           cardSubTitle: "شوية كلام يكتب هنا",
//                           cardTitle: "إسم الصنف ",
//                           numberOfItems: "9",
//                           cardDate: "2024/2/11 م",
//                           imageUrl: "assets/stickers/stic_10-17.png",
//                           backgroundColor: Color(0xFFC44036),
//                         ),
//                         const ListsContainer(
//                           cardSubTitle: "شوية كلام يكتب هنا",
//                           cardTitle: "إسم الصنف ",
//                           numberOfItems: "3",
//                           cardDate: "2024/2/11 م",
//                           imageUrl: "assets/images/Logo.png",
//                           backgroundColor: Color(0xFF9B0A00),
//                         ), // ID  -- >        2040703
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
