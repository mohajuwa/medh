// ID  -- >    2040697

import 'package:flutter/cupertino.dart';
import 'package:medh/FUSER/Fuser_widgets/fuser_navbar_roots.dart';
import 'package:medh/HomePage/home_page.dart';
import 'package:medh/NUSER/Nuser_widgets/navbar_roots.dart';

class User {
  final String role;

  User({required this.role});
}

class UsersType extends StatelessWidget {
  final User user;

  const UsersType({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    if (user.role == 'normal') {
      return const NavBarRoots(); // ID  -- >         2040681
    } else if (user.role == 'medicine_provider') {
      return const FuserNavBarRoots(); // ID  -- >    2040712
    } else {
      return const HomePage(); // ID  -- >        2040680
    }
  }
}
