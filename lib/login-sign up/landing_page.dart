import 'package:flutter/material.dart';

import '../widgets/log_in_widgets.dart';
import '../widgets/navigation_bar.dart';
import '../widgets/search_bar.dart';
import '../widgets/view_save.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

// class _LandingPageState extends State<LandingPage> {
//   final ScrollController _scrollController1 = ScrollController();
//   final ScrollController _scrollController2 = ScrollController();
//   final ScrollController _scrollController3 = ScrollController();

//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
//       double minScrollExtent1 = _scrollController1.position.minScrollExtent;
//       double maxScrollExtent1 = _scrollController1.position.maxScrollExtent;
//       double minScrollExtent2 = _scrollController2.position.minScrollExtent;
//       double maxScrollExtent2 = _scrollController2.position.maxScrollExtent;
//       double minScrollExtent3 = _scrollController3.position.minScrollExtent;
//       double maxScrollExtent3 = _scrollController3.position.maxScrollExtent;
//       //
//       animateToMaxMin(maxScrollExtent1, minScrollExtent1, maxScrollExtent1, 35,
//           _scrollController1);
//       animateToMaxMin(maxScrollExtent2, minScrollExtent2, maxScrollExtent2, 25,
//           _scrollController2);
//       animateToMaxMin(maxScrollExtent3, minScrollExtent3, maxScrollExtent3, 40,
//           _scrollController3);
//     });
//   }

//   animateToMaxMin(double max, double min, double direction, int seconds,
//       ScrollController scrollController) {
//     scrollController
//         .animateTo(direction,
//             duration: Duration(seconds: seconds), curve: Curves.linear)
//         .then((value) {
//       direction = direction == max ? min : max;
//       animateToMaxMin(max, min, direction, seconds, scrollController);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//   children: [
//     LogInPictureWidget(
//       scrollController1: _scrollController1,
//       scrollController2: _scrollController2,
//       scrollController3: _scrollController3,
//     ),
//   ],
// );;
//   }
// }


class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
      Spacer(),
            SignUpSearchBarWidget(forWhatPurpose: 'Password',),
            SignUpSearchBarWidget(forWhatPurpose: 'Email',),
            ViewSaveWidget(),
            NavigationBarWidget(selectedItem: 'home',),
        ],
      ),
    );
  }
}