import 'package:flutter/material.dart';
import 'package:pinterest_clone/screens/log-in/sign-up/landing_page.dart';
import 'package:pinterest_clone/screens/log-in/sign-up/sign-up-details/birthday.dart';
import 'package:pinterest_clone/screens/log-in/sign-up/sign-up-details/email.dart';
import 'package:pinterest_clone/screens/main_screens/search_page.dart';
import 'package:pinterest_clone/screens/main_screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFFFCFCFC),
      ),
      //home: const TestPage(),
      home: const LandingPage(),
    );
  }
}
  


// void main() => runApp(
//     DevicePreview(
//       enabled: !kReleaseMode,
//       builder: (context) => const MyApp(),
//     ),
//   );

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       // ignore: deprecated_member_use
//       useInheritedMediaQuery: true,
//       locale: DevicePreview.locale(context),
//       builder: DevicePreview.appBuilder,
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primaryColor: const Color(0xFFFCFCFC),
//       ),
//       home: const LandingPage(),
//     );
//   }
// }