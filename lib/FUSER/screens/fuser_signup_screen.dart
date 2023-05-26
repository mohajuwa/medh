// ID  -- >        2040752
// صفحة التسجيل للصيدلي
// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medh/Theme/theme.dart';
import 'package:medh/FUSER/Fuser_widgets/fuser_navbar_roots.dart';
import 'package:medh/provider.dart';

import 'fuser_login_screen.dart';

class FuserSignUpScreen extends ConsumerStatefulWidget {
  const FuserSignUpScreen({super.key});

  @override
  FuserSignUpScreenState createState() => FuserSignUpScreenState();
}

class FuserSignUpScreenState extends ConsumerState<FuserSignUpScreen> {
  double? scrolledUnderElevation;
  bool passTooggle = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getAppTheme(context, ref.watch(appThemeProvider)),
      debugShowCheckedModeBanner: false,
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 60,
            scrolledUnderElevation: scrolledUnderElevation,
            title: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 0, top: 2),
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
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: colors(context).color4,
                            borderRadius: BorderRadius.circular(18),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0x47000000),
                                blurRadius: 1.5,
                                spreadRadius: 1,
                              )
                            ],
                          ),
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(3),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.switch_left_outlined,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      " شعار البرنامج -->",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: colors(context).color4,
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x47000000),
                            blurRadius: 1.5,
                            spreadRadius: 1,
                          )
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: const CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 15,
                              backgroundImage:
                                  AssetImage("assets/images/Logo.png"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 360,
                  child: ListView(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/stickers/stic3.png",
                                height: 160,
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/stickers/stic4.png",
                                    height: 160,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 2.9,
                        height: 2.0,
                      ),
                      const SizedBox(height: 2),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 15),
                        child: TextField(
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            label: Text(
                              "الإسم كامل",
                              style: TextStyle(
                                color: colors(context).color3,
                              ),
                            ),
                            prefixIconColor: colors(context).color3,
                            prefixIcon: const Icon(Icons.person),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 15),
                        child: TextField(
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            label: Text(
                              "البريد",
                              style: TextStyle(
                                color: colors(context).color3,
                              ),
                            ),
                            prefixIconColor: colors(context).color3,
                            prefixIcon: const Icon(Icons.email),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 15),
                        child: TextField(
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            label: Text(
                              " رقم الجوال",
                              style: TextStyle(
                                color: colors(context).color3,
                              ),
                            ),
                            prefixIconColor: colors(context).color3,
                            prefixIcon: const Icon(Icons.phone),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 15),
                        child: TextField(
                          obscureText: passTooggle ? true : false,
                          decoration: InputDecoration(
                            label: Text(
                              "إدخل كلمة السر ",
                              style: TextStyle(
                                color: colors(context).color3,
                              ),
                            ),
                            border: const OutlineInputBorder(),
                            prefixIconColor: colors(context).color3,
                            prefixIcon: const Icon(Icons.lock),
                            suffixIconColor: colors(context).color3,
                            suffixIcon: InkWell(
                                onTap: () {
                                  //
                                  if (passTooggle == true) {
                                    passTooggle = false;
                                  } else {
                                    passTooggle = true;
                                  }
                                  setState(() {});
                                },
                                child: passTooggle
                                    ? const Icon(CupertinoIcons.eye_slash_fill)
                                    : const Icon(CupertinoIcons.eye_fill)),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: SizedBox(
                          width: double.infinity,
                          child: Material(
                            color: colors(context).color1,
                            borderRadius: BorderRadius.circular(10),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const FuserLoginScreen(), // ID  -- >        2040751
                                    ));
                              },
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 40),
                                child: Center(
                                  child: Text(
                                    "إنشاء حساب",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            " لديك حساب؟",
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const FuserLoginScreen(), // ID  -- >        2040751
                                ),
                              );
                            },
                            child: const Text(
                              " تسجيل الدخول",
                              style: TextStyle(fontFamily: 'El_Messiri'),
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
    );
  }
}
