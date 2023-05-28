import 'package:flutter/material.dart';
import 'package:medh/FUSER/Fuser_widgets/fuser_navbar_roots.dart';
import 'package:medh/HomePage/home_page.dart';
import 'package:medh/NUSER/Nuser_widgets/navbar_roots.dart';

class HomeScreenRole extends StatelessWidget {
  final String role;
  const HomeScreenRole({super.key, required this.role});

  @override
  Widget build(BuildContext context) {
    if (role == 'pharmacist') {
      return const FuserNavBarRoots();
    } else {
      if (role == 'normaluser') {
        return const NavBarRoots();
      } else {
        return const HomePage();
      }
    }
  }
}
