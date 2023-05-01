// import 'dart:async';

// import 'package:after_layout/after_layout.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:medh/fuser_screens/widgets/fuser_navbar_roots.dart';
// import 'package:medh/pages/home_page.dart';
// import 'package:medh/widgets/navbar_roots.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class OntimeApp extends StatelessWidget {
//   const OntimeApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: SplashScreen(),
//     );
//   }
// }

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   SplashScreenState createState() => SplashScreenState();
// }

// class SplashScreenState extends State<SplashScreen>
//     with AfterLayoutMixin<SplashScreen> {
//   Future checkFirstSeen() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     bool seen = (prefs.getBool('seen') ?? false);

//     if (seen) {
//       Navigator.of(context).pushReplacement(
//           MaterialPageRoute(builder: (context) => const NHome()));
//     } else {
//       await prefs.setBool('seen', true);
//       Navigator.of(context).pushReplacement(
//           MaterialPageRoute(builder: (context) => const FIntroScreen()));
//     }
//   }

//   @override
//   void afterFirstLayout(BuildContext context) => checkFirstSeen();

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Center(
//         child: Text('جار التحميل …'),
//       ),
//     );
//   }
// }

// class NHome extends ConsumerStatefulWidget {
//   const NHome({super.key});

//   @override
//   NHomeState createState() => NHomeState();
// }

// class NHomeState extends ConsumerState<NHome> {
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Directionality(
//         textDirection: TextDirection.rtl,
//         child: NavBarRoots(),
//       ),
//     );
//   }
// }

// class NIntroScreen extends StatelessWidget {
//   const NIntroScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: HomePage(),
//     );
//   }
// }

// class FHome extends ConsumerStatefulWidget {
//   const FHome({super.key});

//   @override
//   FHomeState createState() => FHomeState();
// }

// class FHomeState extends ConsumerState<FHome> {
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Directionality(
//         textDirection: TextDirection.rtl,
//         child: FuserNavBarRoots(),
//       ),
//     );
//   }
// }

// class FIntroScreen extends StatelessWidget {
//   const FIntroScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: HomePage(),
//     );
//   }
// }
