import 'package:flutter/material.dart';
import '../../widgets/navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF000000),
        body: Stack(
          children: [
            NavigationBarWidget(selectedItem: 'home')
          ],
        ),
      )
    );
  }
}