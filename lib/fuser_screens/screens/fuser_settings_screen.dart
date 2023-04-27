// صفحة الإعدادات للصيدلي

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:medh/pages/home_page.dart';

class FuserSettingsScreen extends StatelessWidget {
  const FuserSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //  هذا عشان زر الرجوع

    return WillPopScope(
      onWillPop: () {
        //trigger leaving and use own data
        Navigator.pop(context, false);
        //we need to return a future
        return Future.value(true);
      },
      child: MaterialApp(
        localizationsDelegates: const [
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale("ar", "YE"), // OR Locale('ar', 'AE') OR Other RTL locales
        ],
        theme: ThemeData(fontFamily: 'El_Messiri'),
        debugShowCheckedModeBanner: false,
        home: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            body: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "الإعدادات",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 30),
                      const ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              AssetImage("assets/images/doctor1.jpg"),
                        ),
                        title: Text(
                          "إسم الصيدلية",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 25,
                          ),
                        ),
                        subtitle: Text("الحساب"),
                      ),
                      const Divider(height: 50),
                      ListTile(
                        onTap: () {},
                        leading: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple.shade100,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            CupertinoIcons.person,
                            color: Colors.blue,
                            size: 35,
                          ),
                        ),
                        title: const Text(
                          "الحساب",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios_rounded),
                      ),
                      const SizedBox(height: 20),
                      ListTile(
                        onTap: () {},
                        leading: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.notifications_none_outlined,
                            color: Colors.deepPurple,
                            size: 35,
                          ),
                        ),
                        title: const Text(
                          "إشعارات",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios_rounded),
                      ),
                      const SizedBox(height: 20),
                      ListTile(
                        onTap: () {},
                        leading: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.indigo.shade100,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.privacy_tip_outlined,
                            color: Colors.indigo,
                            size: 35,
                          ),
                        ),
                        title: const Text(
                          "الخصوصية",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios_rounded),
                      ),
                      const SizedBox(height: 20),
                      ListTile(
                        onTap: () {},
                        leading: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.green.shade100,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.settings_suggest_outlined,
                            color: Colors.green,
                            size: 35,
                          ),
                        ),
                        title: const Text(
                          "عام",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios_rounded),
                      ),
                      const SizedBox(height: 20),
                      ListTile(
                        onTap: () {},
                        leading: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.orange.shade100,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.info_outline_rounded,
                            color: Colors.orange,
                            size: 35,
                          ),
                        ),
                        title: const Text(
                          "عن التطبيق",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios_rounded),
                      ),
                      const Divider(height: 40),
                      ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ),
                          );
                        },
                        leading: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.redAccent.shade100,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.logout,
                            color: Colors.redAccent,
                            size: 35,
                          ),
                        ),
                        title: const Text(
                          "تسجيل خروج",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios_rounded),
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
}
