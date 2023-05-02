import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:medh/darkmod/theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'HomePage/home_page.dart';
import 'provider.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return WillPopScope(
      onWillPop: () {
        //trigger leaving and use own data
        Navigator.pop(context, true);
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
        debugShowCheckedModeBanner: false,
        theme: getAppTheme(
          context,
          ref.watch(appThemeProvider),
        ),
        home: const HomePage(),
      ),
    );
  }
}
