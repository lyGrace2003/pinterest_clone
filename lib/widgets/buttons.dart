import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonWidget extends StatefulWidget {
  final String text;
  final String textColor;
  final String buttonColor;
  final Widget nextPage;

  const ButtonWidget({super.key, required this.text, required this.textColor, required this.buttonColor, required this.nextPage});

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  late Color _textColor;
  late Color _buttonColor;
  @override
  void initState() {
    super.initState();
    _buttonColor = widget.buttonColor == 'red' ? const Color(0xFFE70125) : const Color(0xFFFFFFFF);
    _textColor = widget.textColor == 'black' ? const Color(0xFF000000) : const Color(0xFFFFFFFF);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
         Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => widget.nextPage),
        );
      },
      child: Container(
        width: 380,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: _buttonColor,
        ),
        child: Center(
          child: Text(
            widget.text,
            style: GoogleFonts.inter(
              color: _textColor,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}


class LandingPageButtonWidget extends StatefulWidget {
  final String text;
  final String textColor;
  final String buttonColor;

  const LandingPageButtonWidget({super.key, required this.text, required this.textColor, required this.buttonColor});

  @override
  State<LandingPageButtonWidget> createState() => _LandingPageButtonWidgetState();
}

class _LandingPageButtonWidgetState extends State<LandingPageButtonWidget> {
  late Color _textColor;
  late Color _buttonColor;
  @override
  void initState() {
    super.initState();
    _buttonColor = widget.buttonColor == 'red' ? const Color(0xFFE70125) : const Color(0xFFFFFFFF);
    _textColor = widget.textColor == 'black' ? const Color(0xFF000000) : const Color(0xFFFFFFFF);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: _buttonColor,
      ),
      child: Center(
        child: Text(
          widget.text,
          style: GoogleFonts.inter(
            color: _textColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}


class LogInButton extends StatelessWidget {
  final String text;
  const LogInButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    if(text == 'Continue with Facebook'){
      return Container(
        width: 372,
        height: 47,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color(0xFF3C5996)
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.inter(
                color: const Color(0xFFEFEFEF),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
          ),
        ),
      );
    }
    else if(text == 'Continue with Google'){
        return Container(
        width: 372,
        height: 47,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color(0xFF4286F5)
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.inter(
                color: const Color(0xFFEFEFEF),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
          ),
        ),
      );
    }
    else{
        return Container(
        width: 372,
        height: 47,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color(0xFFFEFAF3)
        ),
        child: Center(
          child: Row(
            children: [
              const Spacer(),
              Container(
                width: 14,
                height: 16,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/assets/icons/Apple.png'))
                ),
              ),
              Text(
                text,
                style: GoogleFonts.inter(
                    color: const Color(0xFF000000),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
              ),
              const Spacer(),
            ],
          ),
        ),
      );
    }
  }
}

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 372,
        height: 47,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color(0xFF404040)
        ),
        child: Center(
          child: Text(
            'Log in',
            style: GoogleFonts.inter(
                color: const Color(0xFF8E8E8E),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
          ),
        ),
      );
  }
}