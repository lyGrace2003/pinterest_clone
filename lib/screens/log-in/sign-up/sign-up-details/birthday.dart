import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinterest_clone/widgets/sign-up_navigation.dart';

import '../../../../widgets/buttons.dart';
import 'locations.dart';

class SignUpBirthday extends StatefulWidget {
  const SignUpBirthday({super.key});

  @override
  State<SignUpBirthday> createState() => _SignUpBirthdayState();
}

class _SignUpBirthdayState extends State<SignUpBirthday> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF000000),
        body: Column(
          children: [
            const SizedBox(height: 50,),
            const SignUpNavigator(selectedIndex: 2),
            const SizedBox(height: 35,),
            Text(
                'Birthday', 
                style: GoogleFonts.inter(
                  color: const Color(0xFFEFEFEF),
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  ),
                ),
            const SizedBox(height: 10,),
            Container(
                    width: 380,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(width: 1, color: const Color(0xFFFFFFFF))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: TextField(
                        style: GoogleFonts.inter(
                          color: const Color(0xFFFFFFFF),
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ),
            const Spacer(),
            const ButtonWidget(text: 'Next', textColor: 'white', buttonColor: 'red', nextPage: SignUpLocations()),
            const SizedBox(height: 20,), 
          ],
        ),
      ),
    );
  }
}