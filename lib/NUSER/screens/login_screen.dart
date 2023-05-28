//  ID  -- >    2040694
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medh/Theme/theme.dart';
import 'package:medh/Values/values.dart';
import 'package:medh/provider.dart';
import 'package:medh/NUSER/screens/signup_screen.dart';

import '../Nuser_widgets/navbar_roots.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends ConsumerState<LoginScreen> {
  double? scrolledUnderElevation;
  bool passTooggle = true;

  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();

  GlobalKey logInFormKey = GlobalKey();
  String userNameValidator(String val) {
    String valid = "";
    if (val.trim().isEmpty) {
      valid = "This Feild Can't Be Empty";
    }
    if (val.trim().length > 20) {
      valid = "This Feild Can't Greater Than 20 Letters";
    }
    return valid;
  }

  String passwordValidator(String val) {
    String valid = "";
    if (val.trim().isEmpty) {
      valid = "This Feild Can't Be Empty";
    }
    if (val.trim().length < 4) {
      valid = "This Feild Can't Less Than 4 Letters";
    }
    if (val.trim().length > 20) {
      valid = "This Feild Can't Greater Than 20 Letters";
    }
    return valid;
  }

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
                                  const NavBarRoots(), //ID  -- >    2040681
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
                  width: 400,
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
                      Form(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          key: logInFormKey,
                          child: Column(
                            children: [
                              Divider(
                                thickness: 2.9,
                                height: 2.0,
                                color: colors(context).colorWhiteToBlack,
                              ),
                              const SizedBox(height: 10),
                              buildTextFormFeild(context, "ادخل اسم المستخدم",
                                  userNameValidator, userName),
                              buildPasswordTextFormFeild(
                                  context,
                                  "ادخل كلمة المرور",
                                  passwordValidator,
                                  password)
                            ],
                          )),
                      AppSpaces.verticalSpace20,
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: SizedBox(
                          child: Material(
                            color: colors(context).color1,
                            borderRadius: BorderRadius.circular(10),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const NavBarRoots(), // ID  -- >    2040681
                                  ),
                                );
                              },
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 40),
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
                                    builder: (context) =>
                                        const SignUpScreen(), //ID  -- >    2040693
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding buildPasswordTextFormFeild(
      BuildContext context, myLabel, myValidator, myController) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: TextFormField(
        validator: myValidator,
        controller: myController,
        obscureText: passTooggle ? true : false,
        decoration: InputDecoration(
          label: Text(
            myLabel,
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
    );
  }

  Padding buildTextFormFeild(
      BuildContext context, myLabel, myValidator, myController) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: TextFormField(
        controller: myController,
        validator: myValidator,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          label: Text(
            myLabel,
            style: TextStyle(
              color: colors(context).color3,
            ),
          ),
          prefixIconColor: colors(context).color3,
          prefixIcon: const Icon(Icons.person),
        ),
      ),
    );
  }
}
