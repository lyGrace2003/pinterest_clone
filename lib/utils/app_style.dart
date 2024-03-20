import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color pinRed = Color.fromRGBO(231,1,37, 1);
const Color pinBlack = Color.fromRGBO(20,20,20,1);
const Color pinDarkgrey = Color.fromRGBO(64,64,64,1);
const Color pinGrey = Color.fromRGBO(142,142,142,1);
const Color pinLightgreay = Color.fromRGBO(225,225,225,1);
const Color pinWhite = Color(0xffffffff);

const double pinButtonRadius =25.0;

final ButtonStyle buttonRed = ElevatedButton.styleFrom(
  minimumSize: const Size(336, 44), 
  backgroundColor: pinRed,
  elevation: 0,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(pinButtonRadius),),
  ),
);

final ButtonStyle buttonWhite = ElevatedButton.styleFrom(
  minimumSize: const Size(336, 44), 
  backgroundColor: pinWhite,
  elevation: 0,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(pinButtonRadius),),
  ),
);


final pinBold = GoogleFonts.inter(
  color: Colors.black,
  fontWeight: FontWeight.w700,
);

final pinSemibold = GoogleFonts.inter(
  color: Colors.black,
  fontWeight: FontWeight.w600,
);

final pinMedium = GoogleFonts.inter(
  color: Colors.black,
  fontWeight: FontWeight.w500,
);

final pinRegular = GoogleFonts.inter(
  color: Colors.black,
  fontWeight: FontWeight.w400,
);
