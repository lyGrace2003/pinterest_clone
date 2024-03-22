import 'package:flutter/material.dart';
import 'login-sign up/landing_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: const Color(0xFFFCFCFC),
        ),
        home: const LandingPage(),
      );
    }
  }




//Joan gamita ni if dili ka mag emulator and ganahan ka makakita ug preview sa UI sa isa ka device
//i uncomment lang niya

// void main() {
//   runApp(
//     DevicePreview(
//       enabled: !kReleaseMode,
//       builder: (context) => const MyApp(),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         // ignore: deprecated_member_use
//         useInheritedMediaQuery: true,
//         locale: DevicePreview.locale(context),
//         builder: DevicePreview.appBuilder,
//         debugShowCheckedModeBanner: false,
//         home: const LandingPage());
//   }
// }