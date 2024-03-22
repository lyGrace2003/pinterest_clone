import 'package:flutter/material.dart';
// import 'package:pinterest_clone/utils/size_config.dart';

import '../widgets/navigation_bar.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 50,
          ),
          const Spacer(),
          const NavigationBarWidget(selectedItem: 'home',),
        ],
      ),
    );
  }
}