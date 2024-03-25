import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widgets/buttons.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF000000),
        body: Center(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 55,
                decoration: const BoxDecoration(
                  color:  Color(0xFF2B2B2B),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100), 
                    topRight: Radius.circular(100)
                  )
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 25,),
                    Container(
                      width: 34,
                      height: 34,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('lib/assets/icons/Close.png'))
                      ),
                    ),
                    const SizedBox(width: 120,),
                    Text(
                      'Log in',
                      style: GoogleFonts.inter(
                          color: const Color(0xFFFFFFFF),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              const SizedBox(height: 30,),
              const LogInButton(text: 'Continue with Facebook'),
              const SizedBox(height: 15,),
              const LogInButton(text: 'Continue with Google'),
              const SizedBox(height: 15,),
              const LogInButton(text: 'Continue with Apple'),
              const SizedBox(height: 20,),
              Text(
                'OR',
                style: GoogleFonts.inter(
                    color: const Color(0xFFFFFFFF),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
              ),
              Row(
                children: [
                  const SizedBox(width: 25,),
                  Text(
                    'Email',
                    style: GoogleFonts.inter(
                        color: const Color(0xFFFFFFFF),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                  ),
                  const Spacer()
                ],
              ),
              Row(
                children: [
                  const SizedBox(width: 25,),
                  SizedBox(
                    width: 372,
                    height: 30,
                    child: Text(
                    'Enter your email',
                    style: GoogleFonts.inter(
                        color: const Color(0xFFFFFFFF),
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                  ),
                  ),
                  const Spacer()
                ],
              ),
              const SizedBox(height: 30,),
              Row(
                children: [
                  const SizedBox(width: 25,),
                  Text(
                    'Password',
                    style: GoogleFonts.inter(
                        color: const Color(0xFFFFFFFF),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                  ),
                  const Spacer(),
                ],
              ),
              Row(
                children: [
                  const SizedBox(width: 25,),
                  SizedBox(
                    width: 372,
                    height: 30,
                    child: Text(
                    'Enter your password',
                    style: GoogleFonts.inter(
                        color: const Color(0xFFFFFFFF),
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                  ),
                  ),
                  const Spacer()
                ],
              ),
              const SizedBox(height: 40,),
              const LogIn(),
              const SizedBox(height: 40,),
              Text(
                'Forgot your password?',
                style: GoogleFonts.inter(
                    color: const Color(0xFFFFFFFF),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
              ),
              const SizedBox(height: 20,),
              Text(
                'Use iCloud Keychain',
                style: GoogleFonts.inter(
                    color: const Color(0xFFFFFFFF),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
              ),
            ],
          ),
        ),
      )
    );
  }
}