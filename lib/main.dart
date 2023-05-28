import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:medh/Data/mysql.dart';
import 'package:medh/Theme/theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';

import 'HomePage/home_page.dart';
import 'provider.dart';

void main() {
  ErrorWidget.builder = (FlutterErrorDetails details) {
    return Material(
      child: Container(
        color: Colors.black54,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              details.exception.toString(),
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  };
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  FlutterNativeSplash.remove();

  runApp(const ProviderScope(child: MyApp()));
}



class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
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
            home: const HomePage() // ID  -- >    2040680,
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



// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
// import 'package:medh/FUSER/Fuser_widgets/fuser_navbar_roots.dart';
// import 'package:medh/FUSER/screens/fuser_login_screen.dart';
// import 'package:medh/NUSER/Nuser_widgets/navbar_roots.dart';
// import 'package:medh/NUSER/screens/login_screen.dart';
// import 'package:medh/NUSER/screens/signup_screen.dart';
// import 'package:medh/Theme/theme.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:sizer/sizer.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';
// import 'HomePage/home_page.dart';
// import 'provider.dart';

// bool? islogin;

// void main() async {
//   ErrorWidget.builder = (FlutterErrorDetails details) {
//     return Material(
//       child: Container(
//         color: Colors.black54,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               details.exception.toString(),
//               style: const TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.w500,
//                 color: Colors.white,
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   };

//   WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
//   FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
//   SystemChrome.setSystemUIOverlayStyle(
//       const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );

//   //  User Check Login
//   var user = FirebaseAuth.instance.currentUser;
//   if (user == null) {
//     islogin = false;
//   } else {
//     islogin = true;
//   }

//   FlutterNativeSplash.remove();

//   runApp(const ProviderScope(child: MyApp()));
// }

// class MyApp extends ConsumerWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Sizer(
//       builder: (context, orientation, deviceType) {
//         return MaterialApp(
//           localizationsDelegates: const [
//             GlobalCupertinoLocalizations.delegate,
//             GlobalMaterialLocalizations.delegate,
//             GlobalWidgetsLocalizations.delegate,
//           ],
//           supportedLocales: const [
//             Locale("ar", "YE"), // OR Locale('ar', 'AE') OR Other RTL locales
//           ],
//           debugShowCheckedModeBanner: false,
//           theme: getAppTheme(
//             context,
//             ref.watch(appThemeProvider),
//           ),
//           home: islogin == true
//               ? const NavBarRoots()
//               : const HomePage(), // ID  -- >    2040680,

//           routes: {
//             "homePage": (context) => const HomePage(),
//             "nuserLogin": (context) => const LoginScreen(),
//             "nuserSignup": (context) => const SignUpScreen(),
//             "nuserNavRoots": (context) => const NavBarRoots(),
//             "fuserNavRoots": (context) => const FuserNavBarRoots(),
//             "fuserLoginScren": (context) => const FuserLoginScreen(),
//             "fuserSignup": (context) => const SignUpScreen(),
//           },
//         );
//       },
//     );
//   }
// }




// // import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:firebase_core/firebase_core.dart';
// // import 'package:flutter/material.dart';
// // import 'package:cloud_firestore/cloud_firestore.dart';

// // import 'firebase_options.dart';

// // void main() async {
// //   WidgetsFlutterBinding.ensureInitialized();
// //   await Firebase.initializeApp(
// //     options: DefaultFirebaseOptions.currentPlatform,
// //   );
// //   runApp(const MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return const MaterialApp(
// //       title: 'Role-Based Navigation',
// //       home: AuthenticationWrapper(),
// //     );
// //   }
// // }

// // class AuthenticationWrapper extends StatelessWidget {
// //   const AuthenticationWrapper({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return StreamBuilder<User?>(
// //       stream: FirebaseAuth.instance.authStateChanges(),
// //       builder: (context, snapshot) {
// //         if (snapshot.connectionState == ConnectionState.waiting) {
// //           return const CircularProgressIndicator();
// //         } else if (snapshot.hasData) {
// //           return RoleBasedNavigator();
// //         } else {
// //           return const LoginPage();
// //         }
// //       },
// //     );
// //   }
// // }

// // class RoleBasedNavigator extends StatelessWidget {
// //   final User? user = FirebaseAuth.instance.currentUser;
// //   final FirebaseFirestore firestore = FirebaseFirestore.instance;

// //   RoleBasedNavigator({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return StreamBuilder<DocumentSnapshot>(
// //       stream: firestore.collection('users').doc(user!.uid).snapshots(),
// //       builder: (context, snapshot) {
// //         if (snapshot.connectionState == ConnectionState.waiting) {
// //           return const CircularProgressIndicator();
// //         } else {
// //           final String userRole = snapshot.data!['role'];
// //           return Navigator(
// //             onGenerateRoute: (settings) {
// //               Widget screen;

// //               switch (userRole) {
// //                 case 'Admin':
// //                   screen = const AdminScreen();
// //                   break;
// //                 case 'User':
// //                   screen = const UserScreen();
// //                   break;
// //                 default:
// //                   screen = Container();
// //               }

// //               return MaterialPageRoute(builder: (_) => screen);
// //             },
// //           );
// //         }
// //       },
// //     );
// //   }
// // }

// // class LoginPage extends StatelessWidget {
// //   const LoginPage({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('Login'),
// //       ),
// //       body: Center(
// //         child: ElevatedButton(
// //           child: const Text('Login'),
// //           onPressed: () {
// //             FirebaseAuth.instance.signInAnonymously();
// //           },
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class AdminScreen extends StatelessWidget {
// //   const AdminScreen({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('Admin Screen'),
// //       ),
// //       body: const Center(
// //         child: Text('Welcome, Admin!'),
// //       ),
// //     );
// //   }
// // }

// // class UserScreen extends StatelessWidget {
// //   const UserScreen({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('User Screen'),
// //       ),
// //       body: const Center(
// //         child: Text('Welcome, User!'),
// //       ),
// //     );
// //   }
// // }



// // void main() async {
// //   WidgetsFlutterBinding.ensureInitialized();
// //   SharedPreferences prefs = await SharedPreferences.getInstance();
// //   bool isFirstRun = prefs.getBool('isFirstRun') ?? true;

// //   if (isFirstRun) {
// //     await prefs.setBool('isFirstRun', false);
// //   }

// //   runApp(MyApp(isFirstRun: isFirstRun));
// // }
// // class MyApp extends ConsumerWidget {
// //  final bool isFirstRun;

// //   MyApp({required this.isFirstRun});