//   ID  -- >    2040692
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medh/Theme/theme.dart';
import 'package:medh/provider.dart';
import 'signup_screen.dart';

import 'login_screen.dart';
import '../Nuser_widgets/navbar_roots.dart';

class WelcomeScreen extends ConsumerStatefulWidget {
  const WelcomeScreen({super.key});
  @override
  WelcomeScreenState createState() => WelcomeScreenState();
}

class WelcomeScreenState extends ConsumerState<WelcomeScreen> {
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
              padding: const EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 400  ,
                    height: MediaQuery.of(context).size.height,
                    padding: const EdgeInsets.all(10),
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
                                        builder: (context) {
                                          return const NavBarRoots(); //ID  -- >    2040681
                                        },
                                      ),
                                    );
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 30, right: 30, top: 5, bottom: 5),
                                    decoration: BoxDecoration(
                                      color: colors(context).color4,
                                      borderRadius: BorderRadius.circular(18),
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 1.5,
                                          spreadRadius: 1,
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
                        const SizedBox(height: 80),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Image.asset("assets/images/lined heart.png"),
                        ),
                        const SizedBox(height: 50),
                        const Center(
                          child: Text(
                            "مستعلم عن دواء",
                            style: TextStyle(
                              color: Color(0xFF58329B),
                              fontSize: 35,
                              fontWeight: FontWeight.w500,
                              wordSpacing: 2,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Center(
                          child: Text(
                            "الباحث الدوائي خيارك الأمثل للإستعلام عن الأدوية المعدومة",
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
                                            const LoginScreen(), //ID  -- >    2040694
                                      ));
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
                                          const SignUpScreen(), //ID  -- >    2040693
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
