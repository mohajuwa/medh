// ID  -- >        2040754
// صفحة الترحيب بالمستخدم الصيدللي    : تقريباً ملغية

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medh/Theme/theme.dart';
import 'package:medh/FUSER/screens/fuser_signup_screen.dart';

import '../../provider.dart';
import 'fuser_login_screen.dart';
import '../Fuser_widgets/fuser_navbar_roots.dart';

class FuserWelcomeScreen extends ConsumerStatefulWidget {
  const FuserWelcomeScreen({super.key});
  @override
  FuserWelcomeScreenState createState() => FuserWelcomeScreenState();
}

class FuserWelcomeScreenState extends ConsumerState<FuserWelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    //  هذا عشان زر الرجوع

    return WillPopScope(
      onWillPop: () async => true,
      child: MaterialApp(
        theme: getAppTheme(context, ref.watch(appThemeProvider)),
        debugShowCheckedModeBanner: false,
        home: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 360,
                    padding: const EdgeInsets.all(8),
                    child: ListView(
                      children: [
                        const SizedBox(height: 15),
                        Align(
                          alignment: Alignment.topRight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 1, top: 2),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const FuserNavBarRoots(), // ID  -- >        2040712
                                      ),
                                    );
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 30, right: 30, top: 5, bottom: 5),
                                    decoration: BoxDecoration(
                                      color: colors(context).color1,
                                      borderRadius: BorderRadius.circular(18),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Color(0xA159329B),
                                          blurRadius: 6,
                                          spreadRadius: 4,
                                        )
                                      ],
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(3),
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: const Center(
                                            child: Text(
                                              "تخطي",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
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
                        ),
                        const SizedBox(height: 30),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Image.asset(
                            "assets/stickers/stic1.png",
                            height: 270,
                          ),
                        ),
                        const SizedBox(height: 50),
                        const Center(
                          child: Text(
                            "صيدلانيون",
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w500,
                              wordSpacing: 2,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Center(
                          child: Text(
                            "ومستعلمون عن الأدوية",
                            style: TextStyle(
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
                              color: colors(context).color1,
                              borderRadius: BorderRadius.circular(10),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const FuserLoginScreen(), // ID  -- >        2040751
                                    ),
                                  );
                                },
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 40),
                                  child: Text(
                                    "الدخول",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Material(
                              color: colors(context).color1,
                              borderRadius: BorderRadius.circular(10),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const FuserSignUpScreen(), // ID  -- >        2040752
                                    ),
                                  );
                                },
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 40),
                                  child: Text(
                                    "التسجيل",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
