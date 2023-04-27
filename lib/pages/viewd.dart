// import 'dart:async';

// import 'package:after_layout/after_layout.dart';
// import 'package:flutter/material.dart';
// import 'package:medh/fuser_screens/screens/fuser_welcom_screen.dart';
// import 'package:medh/fuser_screens/widgets/fuser_navbar_roots.dart';
// import 'package:medh/pages/home_page.dart';
// import 'package:medh/widgets/navbar_roots.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// void main() => runApp(const NuserMyApp());

// class NuserMyApp extends StatelessWidget {
//   const NuserMyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: NuserSplash(),
//     );
//   }
// }

// class NuserSplash extends StatefulWidget {
//   const NuserSplash({super.key});

//   @override
//   NuserSplashState createState() => NuserSplashState();
// }

// class NuserSplashState extends State<NuserSplash>
//     with AfterLayoutMixin<NuserSplash> {
//   Future checkFirstSeen() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     bool seen = (prefs.getBool('seen') ?? false);

//     if (seen) {
//       Navigator.of(context).pushReplacement(
//           MaterialPageRoute(builder: (context) => const NuserHome()));
//     } else {
//       await prefs.setBool('seen', true);
//       Navigator.of(context).pushReplacement(
//           MaterialPageRoute(builder: (context) => const NuserIntroScreen()));
//     }
//   }

//   @override
//   void afterFirstLayout(BuildContext context) => checkFirstSeen();

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Center(
//         child: Text('Loading...'),
//       ),
//     );
//   }
// }

// class NuserHome extends StatelessWidget {
//   const NuserHome({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       supportedLocales: const [
//         Locale("ar", "YE"), // OR Locale('ar', 'AE') OR Other RTL locales
//       ],
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(fontFamily: 'El_Messiri'),
//       home: const NavBarRoots(),
//     );
//   }
// }

// class NuserIntroScreen extends StatelessWidget {
//   const NuserIntroScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       supportedLocales: const [
//         Locale("ar", "YE"), // OR Locale('ar', 'AE') OR Other RTL locales
//       ],
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(fontFamily: 'El_Messiri'),
//       home: const FuserNavBarRoots(),
//     );
//   }
// }
