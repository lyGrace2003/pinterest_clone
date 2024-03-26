import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  double boxWeight = 100;
  double boxHeight = 100;

  double boxX = 0;
  double boxY = 0;

  @override
  void initState() {
    super.initState();
    // Call _expandBox after a delay of 2 seconds
    Future.delayed(const Duration(seconds: 1), () {
      _expandBox();
    });
  }

  void _expandBox(){ 
    setState(() {
      boxHeight = MediaQuery.of(context).size.height;
      boxWeight = MediaQuery.of(context).size.width;
    });
  }

  void _moveBox(){
    setState(() {
      boxX = 1;
      boxY = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          height: boxHeight,
          width: boxWeight,
          child: Image.asset('lib/assets/logo.png', fit: BoxFit.fill,),
        )
      ),
    );
  }
}
