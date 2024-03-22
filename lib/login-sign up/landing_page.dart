import 'package:flutter/material.dart';
import 'package:pinterest_clone/widgets/view_save.dart';
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

    return const Scaffold(
      body: Column(
        children: [
          Spacer(),
          ViewSaveWidget(),
          NavigationBarWidget(selectedItem: 'home',),
        ],
      ),
    );
  }
}