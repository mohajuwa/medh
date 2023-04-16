// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'signup_screen.dart';

import 'login_screen.dart';
import '../widgets/navbar_roots.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            SizedBox(height: 15),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NavBarRoots(),
                    ),
                  );
                },
                child: const Text(
                  "تخطي",
                  style: TextStyle(
                    color: Color(0xFF7165D5),
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.all(20),
              child: Image.asset("assets/stickers/stic1.png"),
            ),
            SizedBox(height: 50),
            Center(
              child: Text(
                "صيدلانيون",
                style: TextStyle(
                  color: Color(0xFF7165D5),
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  wordSpacing: 2,
                ),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                "ومستعلمون عن الأدوية",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: Color(0xFF7165D5),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ));
                    },
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      child: Text(
                        "Log in",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Material(
                  color: Color(0xFF7165D5),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ),
                      );
                    },
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
