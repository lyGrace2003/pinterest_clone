import 'package:flutter/material.dart';
import 'package:pinterest_clone/utils/size_config.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return const Placeholder(
    );
  }
}