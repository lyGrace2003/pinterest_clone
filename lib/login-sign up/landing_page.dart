import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/log_in_widgets.dart';
// import '../widgets/navigation_bar.dart';
// import '../widgets/search_bar.dart';
// import '../widgets/view_save.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

// class _LandingPageState extends State<LandingPage> {
//   @override
//   Widget build(BuildContext context) {
//     return const SafeArea(
//       child: Scaffold(
//         body: Column(
//           children: [
//             Spacer(),
//             SignUpSearchBarWidget(forWhatPurpose: 'Password'),
//             SignUpSearchBarWidget(forWhatPurpose: 'Email'),
//             ViewSaveWidget(),
//             NavigationBarWidget(selectedItem: 'home')
//           ],
//         ),
//       ),
//     );
//   }
// }

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
              bottom: 250,
              child: Container(
                  width: 430,
                  height: 98,
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
              left: 160,
              bottom: 250,
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
            Positioned(
              left: 40,
              bottom: 100,
              child: Column(
                children: [
                  Text(
                    'Welcome To Pinterest', 
                    style: GoogleFonts.inter(
                      color: const Color(0xFFEFEFEF),
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    width: 330,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFFE70125)
                    ),
                    child: Center(
                      child: Text(
                        'Sign up', 
                        style: GoogleFonts.inter(
                          color: const Color(0xFFEFEFEF),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8,),
                  Container(
                    width: 330,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFFFFFFFF)
                    ),
                    child: Center(
                      child: Text(
                        'Log in', 
                        style: GoogleFonts.inter(
                          color: const Color(0xFF000000),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 30,
              bottom: 50,
              child: SizedBox(
                      width: 380,
                      height: 30,
                       child: Text(
                            'By continuing, you agree to Pinterest’s Terms of Service and acknowledge you’ve read our Privacy Policy.', 
                            style: GoogleFonts.inter(
                              color: const Color(0xFFEFEFEF),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
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
