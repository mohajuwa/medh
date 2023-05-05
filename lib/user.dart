import 'package:flutter/cupertino.dart';
import 'package:medh/FuseR/widgets/fuser_navbar_roots.dart';
import 'package:medh/HomePage/home_page.dart';
import 'package:medh/NuseR/widgets/navbar_roots.dart';

class User {
  final String role;

  User({required this.role});
}

class MyApp extends StatelessWidget {
  final User user;

  MyApp({required this.user});

  @override
  Widget build(BuildContext context) {
    if (user.role == 'normal') {
      return const FuserNavBarRoots();
    } else if (user.role == 'medicine_provider') {
      return const NavBarRoots();
    } else {
      return HomePage(); // add default behaviour for other roles
    }
  }
}
