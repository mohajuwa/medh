// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../pages/home_page.dart';
import '../../screens/home_screen.dart';
import '../widgets/fuser_navbar_roots.dart';
import 'fuser_home_screen.dart';
import 'fuser_signup_screen.dart';

class FuserLoginScreen extends StatefulWidget {
  @override
  State<FuserLoginScreen> createState() => _FuserLoginScreenState();
}

class _FuserLoginScreenState extends State<FuserLoginScreen> {
  bool passTooggle = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'El_Messiri'),
      debugShowCheckedModeBanner: false,
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: ListView(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6,
                              spreadRadius: 4,
                            )
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.home_filled,
                                  color: Color(0xFF7165D6),
                                  size: 25,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Image.asset("assets/images/doctors.png"),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.all(12),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("إدخل إسم المستخدم"),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12),
                child: TextField(
                  obscureText: passTooggle ? true : false,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("إدخل كلمة السر "),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: InkWell(
                        onTap: () {
                          if (passTooggle == true) {
                            passTooggle = false;
                          } else {
                            passTooggle = true;
                          }
                          setState(() {});
                        },
                        child: passTooggle
                            ? Icon(CupertinoIcons.eye_slash_fill)
                            : Icon(CupertinoIcons.eye_fill),
                      )),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: double.infinity,
                  child: Material(
                    color: Color(0xFF7165D5),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FuserNavBarRoots(),
                          ),
                        );
                      },
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                        child: Center(
                          child: Text(
                            "تسجيل الدخول",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "ليس لديك حساب؟",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FuserSignUpScreen(),
                          ));
                    },
                    child: Text(
                      "إنشاء حساب",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF7165D6),
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
