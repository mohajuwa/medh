import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medh/Theme/theme.dart';
import 'package:medh/provider.dart';
import 'package:medh/NuseR/widgets/navbar_roots.dart';

class GeneralSettings extends ConsumerWidget {
  const GeneralSettings({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Flutter Light/Dark Theme',
      debugShowCheckedModeBanner: false,
      theme: getAppTheme(context, ref.watch(appThemeProvider)),
      home: const GeneralSettingsScreen(),
    );
  }
}

class GeneralSettingsScreen extends ConsumerWidget {
  const GeneralSettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var isDarkMode = ref.watch(appThemeProvider);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => const NavBarRoots(),
              ),
            );
          },
          child: const Icon(
            Icons.arrow_back_ios_new,
            size: 25,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Icon(Icons.add_circle_outline),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView(
          children: [
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.all(1), // Border radius
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Image.asset(
                      "assets/images/doctor1.jpg",
                      fit: BoxFit.fill,
                      width: 120,
                      height: 120,
                    )),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 60),
              alignment: Alignment.center,
              child: Text(
                "Testing User",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            ListTile(
              leading: Icon(isDarkMode ? Icons.brightness_3 : Icons.sunny),
              title: Text(
                isDarkMode ? "ليلي" : "ساطع",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              trailing: Consumer(builder: (context, ref, child) {
                return Transform.scale(
                  scale: 0.7,
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
            ListTile(
              leading: Icon(
                Icons.grid_on_sharp,
                color: colors(context).color1,
              ),
              title: Text(
                "1عام",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings, color: colors(context).color2),
              title:
                  Text("2عام", style: Theme.of(context).textTheme.titleMedium),
            ),
            ListTile(
              leading: Icon(Icons.chat_outlined, color: colors(context).color3),
              title: Text(
                "3عام",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.notifications),
              title: Text(
                "4عام",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
