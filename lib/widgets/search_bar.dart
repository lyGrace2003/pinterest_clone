import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpSearchBarWidget extends StatefulWidget {
  final String forWhatPurpose;
  const SignUpSearchBarWidget({super.key, required this.forWhatPurpose});

  @override
  State<SignUpSearchBarWidget> createState() => _SignUpSearchBarWidgetState();
}

class _SignUpSearchBarWidgetState extends State<SignUpSearchBarWidget> {
  // ignore: prefer_final_fields
  TextEditingController _controller = TextEditingController();
  bool _isContainerClicked = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      width: MediaQuery.of(context).size.width,
      child: Container(
        color: const Color(0xFF000000),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isContainerClicked = !_isContainerClicked;
                });
              },
              child: Container(
                width: 380,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: const Color(0xFFFFFFFF), width: 2),
                ),
                child: purpose(widget.forWhatPurpose),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget purpose(String input) {
    if (input == 'Email') {
      return Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: TextField(
          controller: _controller,
          style: GoogleFonts.inter(
            color: const Color(0xFFFFFFFF),
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
          decoration: InputDecoration(
            hintText: 'Enter your email address',
            hintStyle: GoogleFonts.inter(
              color: const Color(0xFF8E8E8E),
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 275,
              child: TextField(
                controller: _controller,
                style: GoogleFonts.inter(
                  color: const Color(0xFFFFFFFF),
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  hintStyle: GoogleFonts.inter(
                    color: const Color(0xFF8E8E8E),
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                obscureText: !_isContainerClicked, 
              ),
            ),
            const Spacer(),
            Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(_isContainerClicked ? 'lib/assets/icons/Eye.png' : 'lib/assets/icons/Blind.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}
