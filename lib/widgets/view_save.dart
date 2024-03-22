
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:google_fonts/google_fonts.dart';

class ViewSaveWidget extends StatefulWidget {
  const ViewSaveWidget({super.key});


  @override
  // ignore: library_private_types_in_public_api
  _ViewSaveWidgetState createState() => _ViewSaveWidgetState();
}

class _ViewSaveWidgetState extends State<ViewSaveWidget>  {

 @override
 Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        height: 90,
        width: MediaQuery.of(context).size.width,
        color: const Color(0xFF2B2B2B),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20,0,20,0),
          child: Row(
            children: [
              SizedBox(
              width: 25,
              height: 28,
              child: SvgPicture.asset('lib/assets/icons/Heart.svg', 
              color: const Color(0xFFFFFFFF),),
            ),
            const Spacer(),
                Container(
                  width: 95,
                  height: 60,
                  decoration: BoxDecoration(
                    color: const Color(0xFF767676),
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: Center(
                    child: Text(
                                  'View', 
                                  style: GoogleFonts.inter(
                     color: const Color(0xFFFFFFFF),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                  ),
                ),
                const SizedBox(width: 10,),
                Container(
                  width: 95,
                  height: 60,
                  decoration: BoxDecoration(
                    color: const Color(0xFFD32D2F),
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: Center(
                    child: Text(
                                  'Save', 
                                  style: GoogleFonts.inter(
                     color: const Color(0xFFFFFFFF),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                  ),
                ),
                const Spacer(),
                SizedBox(
              width: 22,
              height: 22,
              child: SvgPicture.asset('lib/assets/icons/Upload.svg', 
              color: const Color(0xFFFFFFFF),),
            ),
            ],
          ),
        ),
      ),
    );
 }

}
