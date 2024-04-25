import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinterest_clone/screens/log-in/sign-up/sign-up-details/birthday.dart';

import '../../../../widgets/buttons.dart';
import '../../../../widgets/sign-up_navigation.dart';

class SignUpPassword extends StatefulWidget {
  const SignUpPassword({super.key});

  @override
  State<SignUpPassword> createState() => _SignUpPasswordState();
}

class _SignUpPasswordState extends State<SignUpPassword> {
   @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF000000),
        body: Column(
          children: [
            const SizedBox(height: 50,),
            const SignUpNavigator(selectedIndex: 1),
            const SizedBox(height: 35,),
            Text(
                'Create a password', 
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
            const ButtonWidget(text: 'Next', textColor: 'white', buttonColor: 'red', nextPage: SignUpBirthday(),),
            const SizedBox(height: 20,), 
          ],
        ),
      ),
    );
  }
}