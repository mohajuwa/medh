// ID  -- >        2040711
// ignore_for_file: use_build_context_synchronously, file_names

import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:medh/FUSER/Fuser_widgets/fuser_navbar_roots.dart';
import 'package:medh/HomePage/home_page.dart';
import 'package:medh/NUSER/Nuser_widgets/navbar_roots.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OneTimeScreen extends StatefulWidget {
  const OneTimeScreen({super.key});

  @override
  OneTimeScreenState createState() => OneTimeScreenState();
}

class OneTimeScreenState extends State<OneTimeScreen>
    with AfterLayoutMixin<OneTimeScreen> {
  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool seen = (prefs.getBool('seen') ?? false);

    if (seen) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const NavBarRoots(),// ID  -- >    2040681
        ),
      );
    } else {
      await prefs.setBool(
        'seen',
        true,
      );
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const HomePage(), // ID  -- >    2040680
        ),
      );
    }
  }

  Future fcheckFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool fseen = (prefs.getBool('fseen') ?? false);

    if (fseen) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const FuserNavBarRoots()));
    } else {
      await prefs.setBool(
        'fseen',
        true,
      );
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const HomePage(), // ID  -- >    2040680
        ),
      );
    }
  }

  @override
  void afterFirstLayout(BuildContext context) => checkFirstSeen();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('جار التحميل …'),
      ),
    );
  }
}
