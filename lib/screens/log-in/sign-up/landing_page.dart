import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinterest_clone/widgets/buttons.dart';
import '../../../widgets/log_in_widgets.dart';


class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}


class _LandingPageState extends State<LandingPage> {
  final ScrollController _scrollController1 = ScrollController();
  final ScrollController _scrollController2 = ScrollController();
  final ScrollController _scrollController3 = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      double minScrollExtent1 = _scrollController1.position.minScrollExtent;
      double maxScrollExtent1 = _scrollController1.position.maxScrollExtent;
      double minScrollExtent2 = _scrollController2.position.minScrollExtent;
      double maxScrollExtent2 = _scrollController2.position.maxScrollExtent;
      double minScrollExtent3 = _scrollController3.position.minScrollExtent;
      double maxScrollExtent3 = _scrollController3.position.maxScrollExtent;
      animateToMaxMin(maxScrollExtent1, minScrollExtent1, maxScrollExtent1, 5,
          _scrollController1);
      animateToMaxMin(maxScrollExtent2, minScrollExtent2, maxScrollExtent2, 3,
          _scrollController2);
      animateToMaxMin(maxScrollExtent3, minScrollExtent3, maxScrollExtent3, 1,
          _scrollController3);
    });
  }

  animateToMaxMin(double max, double min, double direction, int seconds,
      ScrollController scrollController) {
    scrollController
        .animateTo(direction,
            duration: Duration(seconds: seconds), curve: Curves.linear)
        .then((value) {
      direction = direction == max ? min : max;
      animateToMaxMin(max, min, direction, seconds, scrollController);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF000000),
        body: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 625,
                  child: LogInPictureWidget(
                    scrollController1: _scrollController1,
                    scrollController2: _scrollController2,
                    scrollController3: _scrollController3,
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 260,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: const Alignment(0.00, -1.00),
                      end: const Alignment(0, 1),
                      colors: [Colors.black.withOpacity(0), Colors.black],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Center(
                child: Container(
                  height: 265,
                  width: MediaQuery.of(context).size.width,
                  color: const Color(0xFF000000),
                  child: SizedBox(             
                    child: Column( 
                      children: [
                        const Spacer(),
                        Text(
                          'Welcome To Pinterest', 
                          style: GoogleFonts.inter(
                            color: const Color(0xFFEFEFEF),
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 30,),
                        const ButtonWidget(text: 'Sign up', textColor: 'white', buttonColor: 'red'),
                        const SizedBox(height: 6,),
                        const ButtonWidget(text: 'Log in', textColor: 'black', buttonColor: 'white'),
                        const SizedBox(height: 15,),
                        SizedBox(
                          width: 380,
                          height: 30,
                          child: Text(
                            'By continuing, you agree to Pinterest’s Terms of Service and acknowledge you’ve read our Privacy Policy.',
                            style:  GoogleFonts.inter(
                              color: const Color(0xFFEFEFEF),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 20,),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: (MediaQuery.of(context).size.width/2)-50,
              bottom: 240,
              child: Container(
                height: 100,
                width: 100,
                  decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/assets/logo.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
