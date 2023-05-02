import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medh/Theme/theme.dart';
import 'package:medh/provider.dart';

// ignore: must_be_immutable
class CustomAddScreen extends ConsumerStatefulWidget {
  const CustomAddScreen({super.key});
  @override
  CustomAddScreenState createState() => CustomAddScreenState();
}

class CustomAddScreenState extends ConsumerState<CustomAddScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getAppTheme(context, ref.watch(appThemeProvider)),
      debugShowCheckedModeBanner: false,
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: colors(context).color5,
            leadingWidth: 30,
            title: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Row(children: const [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/images/icon1.png"),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Text(
                    "إسم الصيدلية",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              ]),
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.only(top: 8, right: 20),
                child: Icon(
                  Icons.call,
                  color: Colors.white,
                  size: 26,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8, right: 10),
                child: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                  size: 26,
                ),
              ),
            ],
          ),
          body: ListView(
            children: [
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Image.asset(
                  "assets/images/icon1.png",
                  height: 100,
                ),
              ),
              const SizedBox(height: 10),
              const Divider(
                thickness: 2.9,
                height: 2.0,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    label: Text(
                      "إسم الدواء",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    prefixIcon: Icon(
                      Icons.medical_information,
                      color: colors(context).color3,
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    label: Text(
                      "وصفة",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    prefixIcon: Icon(
                      Icons.info,
                      color: colors(context).color3,
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    label: Text(
                      "الكمية",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    prefixIcon: Icon(
                      Icons.numbers,
                      color: colors(context).color3,
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    label: Text(
                      "الكمية",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    prefixIcon: Icon(
                      Icons.numbers,
                      color: colors(context).color3,
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    label: Text(
                      "الكمية",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    prefixIcon: Icon(
                      Icons.numbers,
                      color: colors(context).color3,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: double.infinity,
                  child: Material(
                    color: colors(context).color1,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(
                          context,
                        );
                      },
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                        child: Center(
                          child: Text(
                            "طلب",
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
            ],
          ),
        ),
      ),
    );
  }
}
