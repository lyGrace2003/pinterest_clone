import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinterest_clone/screens/log-in/sign-up/sign-up-details/password.dart';

import '../../../../widgets/buttons.dart';
import '../../../../widgets/sign-up_navigation.dart';

class SignUpEmail extends StatefulWidget {
  const SignUpEmail({super.key});

  @override
  State<SignUpEmail> createState() => _SignUpEmailState();
}

class _SignUpEmailState extends State<SignUpEmail> {
   @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF000000),
        body: Column(
          children: [
            const SizedBox(height: 50,),
            const SignUpNavigator(selectedIndex: 0),
            const SizedBox(height: 35,),
            Text(
                'What’s your email?', 
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
                        decoration: InputDecoration(
                          hintText: 'Enter your email address',
                          hintStyle: GoogleFonts.inter(
                            color: const Color(0xFFFFFFFF),
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    )
                  ),
            const Spacer(),
            const ButtonWidget(text: 'Next', textColor: 'white', buttonColor: 'red', nextPage: SignUpPassword()),
            const SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}