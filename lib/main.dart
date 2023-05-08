import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:medh/Theme/theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';

import 'HomePage/home_page.dart';
import 'provider.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const ProviderScope(child: MyApp()));
  FlutterNativeSplash.remove();
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return WillPopScope(
          onWillPop: () {
            //trigger leaving and use own data
            Navigator.pop(context, false);
            //we need to return a future
            return Future.value(false);
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
      },
    );
  }
}



// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   bool isFirstRun = prefs.getBool('isFirstRun') ?? true;

//   if (isFirstRun) {
//     await prefs.setBool('isFirstRun', false);
//   }

//   runApp(MyApp(isFirstRun: isFirstRun));
// }
// class MyApp extends ConsumerWidget {
//  final bool isFirstRun;

//   MyApp({required this.isFirstRun});