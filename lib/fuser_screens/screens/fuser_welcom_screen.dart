// صفحة الترحيب بالمستخدم الصيدللي    : تقريباً ملغية

import 'package:flutter/material.dart';
import 'package:medh/fuser_screens/screens/fuser_signup_screen.dart';

import 'fuser_login_screen.dart';
import '../widgets/fuser_navbar_roots.dart';

class FuserWelcomeScreen extends StatelessWidget {
  const FuserWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => true,
      child: Material(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              const SizedBox(height: 15),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FuserNavBarRoots(),
                      ),
                    );
                  },
                  child: const Text(
                    "تخطي",
                    style: TextStyle(
                      color: Color(0xFF58329B),
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Image.asset("assets/stickers/stic1.png"),
              ),
              const SizedBox(height: 50),
              const Center(
                child: Text(
                  "صيدلانيون",
                  style: TextStyle(
                    color: Color(0xFF58329B),
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    wordSpacing: 2,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  "ومستعلمون عن الأدوية",
                  style: TextStyle(
                    color: Color(0x89000000),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Material(
                    color: const Color(0xFF58329B),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FuserLoginScreen(),
                          ),
                        );
                      },
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                        child: Text(
                          "الدخول",
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
                    color: const Color(0xFF58329B),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FuserSignUpScreen(),
                          ),
                        );
                      },
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                        child: Text(
                          "التسجيل",
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
      ),
    );
  }
}
