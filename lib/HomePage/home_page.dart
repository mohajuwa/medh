// ID  -- >    2040680
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medh/Theme/theme.dart';
import 'package:medh/provider.dart';
import 'package:sizer/sizer.dart';

import '../FuseR/widgets/fuser_navbar_roots.dart';
import '../NuseR/widgets/navbar_roots.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    double? scrolledUnderElevation;
    //  هذا عشان زر الرجوع

    return WillPopScope(
      onWillPop: () async => false,
      child: MaterialApp(
        theme: getAppTheme(
          context,
          ref.watch(appThemeProvider),
        ),
        debugShowCheckedModeBanner: false,
        home: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 65,
              scrolledUnderElevation: scrolledUnderElevation,
              title: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    // name
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(
                            'الباحث الدوائي',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '  شفت!؟',
                          style: Theme.of(context).textTheme.titleLarge,
                        )
                      ],
                    ),

                    // profile pic
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                                padding: const EdgeInsets.all(3),
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
                  ],
                ),
              ),
            ),
            body: SafeArea(
              child: ListView(
                children: [
                  Column(
                    children: [
                      //app bar777777777777777777777777
                      const SizedBox(height: 100),

                      // card -> F User Log in
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: colors(context).color4,
                            borderRadius: BorderRadius.circular(18),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0x47000000),
                                blurRadius: 6,
                                spreadRadius: 4,
                              )
                            ],
                          ),
                          height: 22.h,
                          width: 60.h,
                          child: Row(children: [
                            // Animation  or Cute Picture
                            SizedBox(
                              height: 150,
                              width: 150,
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(
                                      'assets/stickers/stic1.png',
                                      height: 150,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            const SizedBox(
                              width: 40,
                            ),

                            // how do u feel
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'صيدلي؟',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  const Text(
                                    'تفضل من هنا ',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                      color: colors(context).color1,
                                      borderRadius: BorderRadius.circular(18),
                                    ),
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
                                      child: const Center(
                                        child: Text(
                                          'البدء',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ]),
                        ),
                      ),
                      SizedBox(height: 15.h),

                      // card -> N User Log in
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: colors(context).color4,
                            borderRadius: BorderRadius.circular(18),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0x47000000),
                                blurRadius: 6,
                                spreadRadius: 4,
                              )
                            ],
                          ),
                          height: 22.h,
                          width: 60.h,
                          child: Row(children: [
                            // Animation  or Cute Picture
                            SizedBox(
                              height: 150,
                              width: 150,
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(
                                      'assets/images/icon.png',
                                      height: 150,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            const SizedBox(
                              width: 40,
                            ),

                            // how do u feel
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'تدور علاج؟',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  const Text(
                                    'تفضل من هنا ',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                      color: colors(context).color1,
                                      borderRadius: BorderRadius.circular(18),
                                    ),
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
                                      child: const Center(
                                        child: Text(
                                          'البدء',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ]),
                        ),
                      ),
                    ],
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
