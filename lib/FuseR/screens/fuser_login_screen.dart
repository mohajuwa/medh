// صفحة تسجيل الدخول للصيدلي

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medh/darkmod/theme.dart';
import 'package:medh/provider.dart';

import '../widgets/fuser_navbar_roots.dart';
import 'fuser_signup_screen.dart';

class FuserLoginScreen extends ConsumerStatefulWidget {
  const FuserLoginScreen({super.key});

  @override
  FuserLoginScreenState createState() => FuserLoginScreenState();
}

class FuserLoginScreenState extends ConsumerState<FuserLoginScreen> {
  double? scrolledUnderElevation;
  final clr = const Color(0xFF58329B);
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 0, top: 2),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const FuserNavBarRoots(),
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
                                blurRadius: 4,
                                spreadRadius: 2,
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
                            blurRadius: 4,
                            spreadRadius: 2,
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
                              radius: 15,
                              backgroundImage:
                                  AssetImage("assets/images/icon1.png"),
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
          body: ListView(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/stickers/stic3.png",
                        height: 200,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/stickers/stic4.png",
                            height: 200,
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
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(12),
                child: TextField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    label: Text("إدخل إسم المستخدم",
                        style: TextStyle(
                          color: colors(context).color3,
                        )),
                    prefixIconColor: colors(context).color3,
                    prefixIcon: const Icon(
                      Icons.person,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: TextField(
                  obscureText: passTooggle ? true : false,
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      label: Text(
                        "إدخل كلمة السر ",
                        style: TextStyle(
                          color: colors(context).color3,
                        ),
                      ),
                      prefixIconColor: colors(context).color3,
                      prefixIcon: const Icon(Icons.lock),
                      suffixIconColor: colors(context).color3,
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
                            ? const Icon(CupertinoIcons.eye_slash_fill)
                            : const Icon(CupertinoIcons.eye_fill),
                      )),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(10),
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
                            builder: (context) => const FuserNavBarRoots(),
                          ),
                        );
                      },
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                        child: Center(
                          child: Text(
                            "تسجيل الدخول",
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
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "ليس لديك حساب؟",
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FuserSignUpScreen(),
                          ));
                    },
                    child: const Text(
                      "إنشاء حساب",
                      style: TextStyle(fontFamily: 'El_Messiri'),
                    ),
                  ),
                  const SizedBox(height: 12),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
