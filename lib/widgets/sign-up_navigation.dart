import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pinterest_clone/screens/log-in/sign-up/landing_page.dart';

import '../screens/log-in/sign-up/log-in_page.dart';
import '../screens/log-in/sign-up/sign-up-details/birthday.dart';
import '../screens/log-in/sign-up/sign-up-details/email.dart';
import '../screens/log-in/sign-up/sign-up-details/gender.dart';
import '../screens/log-in/sign-up/sign-up-details/locations.dart';
import '../screens/log-in/sign-up/sign-up-details/password.dart';

class SignUpNavigator extends StatefulWidget {
  const SignUpNavigator({Key? key, required this.selectedIndex}) : super(key: key);

  final int selectedIndex;

  @override
  State<SignUpNavigator> createState() => _SignUpNavigatorState();
}

class _SignUpNavigatorState extends State<SignUpNavigator> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(25, 20, 25, 0),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                switch(widget.selectedIndex){
                  case 0:
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const LandingPage()));
                          break;
                        case 1:
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpEmail()));
                          break;
                        case 2:
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpPassword()));
                          break;
                        case 3:
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpBirthday()));
                          break;
                        case 4:
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpGender()));
                          break;
                        case 5:
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpLocations()));
                          break;
                }
              },
              child: const Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 24,
                color: Color(0xFFFFFFFF),
              ),
            ),
            const SizedBox(width: 100,), 
            SizedBox(
              width: 120,
              height: 10,
              child: Row(
                children: List.generate(6, (index) {
                  return _isSelected(index == widget.selectedIndex, index);
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _isSelected(bool isSelected, int index) {
  if (index == 5) {
    return Container(
      width: isSelected ? 10 : 8,
      height: isSelected ? 10 : 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: isSelected ? Border.all(color: const Color(0xFFFFFFFF), width: 2) : null,
        color: const Color(0xFF404040),
      ),
    );
  } else {
    return Row(
      children: [
        Container(
          width: isSelected ? 10 : 8,
          height: isSelected ? 10 : 8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: isSelected ? Border.all(color: const Color(0xFFFFFFFF), width: 2) : null,
            color: const Color(0xFF404040),
          ),
        ),
        const SizedBox(width: 14,)
      ],
    );
  }
}
