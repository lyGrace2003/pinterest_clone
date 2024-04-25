import 'package:flutter/material.dart';
import 'package:pinterest_clone/screens/log-in/sign-up/sign-up-details/locations.dart';

import '../../../../widgets/buttons.dart';
import '../../../../widgets/sign-up_navigation.dart';

class SignUpGender extends StatefulWidget {
  const SignUpGender({super.key});

  @override
  State<SignUpGender> createState() => _SignUpGenderState();
}

class _SignUpGenderState extends State<SignUpGender> {
   @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF000000),
        body: Column(
          children: [
            SizedBox(height: 50,),
            SignUpNavigator(selectedIndex: 0),
            ButtonWidget(text: 'Next', textColor: 'white', buttonColor: 'red', nextPage: SignUpLocations())
          ],
        ),
      ),
    );
  }
}