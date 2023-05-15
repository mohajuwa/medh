// ID  -- >    2040685
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medh/Theme/theme.dart';
import 'package:medh/HomePage/home_page.dart';
import 'package:medh/Values/values.dart';
import 'package:medh/provider.dart';
import 'package:medh/NUSER/screens/welcom_screen.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var isDarkMode = ref.watch(appThemeProvider);
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
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
                      backgroundColor: Colors.transparent,
                      radius: 30,
                      backgroundImage: AssetImage("assets/images/doctor1.jpg"),
                    ),
                    title: Text(
                      "إسم المستخدم",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 25,
                      ),
                    ),
                    subtitle: Text("الحساب"),
                  ),
                  const SizedBox(height: 5),
                  ListTile(
                    leading: Icon(
                      isDarkMode ? Icons.brightness_3 : Icons.sunny,
                      size: 35,
                    ),
                    title: Text(
                      isDarkMode ? "ليلي" : "ساطع",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    trailing: Consumer(builder: (context, ref, child) {
                      return Transform.scale(
                        scale: 1.2,
                        child: Switch(
                          activeColor: Colors.pink,
                          onChanged: (value) {
                            ref.read(appThemeProvider.notifier).state = value;
                          },
                          value: isDarkMode,
                        ),
                      );
                    }),
                  ),
                  const Divider(
                    height: 5,
                    thickness: 2,
                  ),
                  const SizedBox(height: 10),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const WelcomeScreen(), // ID  -- >    2040692
                        ),
                      );
                    },
                    leading: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple.shade100,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        CupertinoIcons.person,
                        color: colors(context).color1,
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
                    trailing: Icon(
                      Icons.chevron_right,
                      color: colors(context).color3,
                      size: 30,
                    ),
                  ),
                  AppSpaces.verticalSpace20,
                  ListTile(
                    onTap: () {},
                    leading: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.blue.shade100,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.notifications_none_outlined,
                        color: colors(context).color2,
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
                    trailing: Icon(
                      Icons.chevron_right,
                      color: colors(context).color3,
                      size: 30,
                    ),
                  ),
                  AppSpaces.verticalSpace20,
                  ListTile(
                    onTap: () {},
                    leading: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade100,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.privacy_tip_outlined,
                        color: colors(context).color2?.withGreen(10),
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
                    trailing: Icon(
                      Icons.chevron_right,
                      color: colors(context).color3,
                      size: 30,
                    ),
                  ),
                  AppSpaces.verticalSpace20,
                  ListTile(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const GeneralSettings(), //ID  -- >    2040696
                      //   ),
                      // );
                    },
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
                    trailing: Icon(
                      Icons.chevron_right,
                      color: colors(context).color3,
                      size: 30,
                    ),
                  ),
                  AppSpaces.verticalSpace20,
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
                    trailing: Icon(
                      Icons.chevron_right,
                      color: colors(context).color3,
                      size: 30,
                    ),
                  ),
                  Divider(
                    height: 40,
                    color: colors(context).colorWhiteToBlack,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const HomePage() // ID  -- >    2040680,
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
                    trailing: Icon(
                      Icons.chevron_right,
                      color: colors(context).color3,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
