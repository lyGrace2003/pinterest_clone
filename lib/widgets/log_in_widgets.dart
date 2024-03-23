  import 'package:flutter/material.dart';
  import 'package:flutter/widgets.dart';

  class LogInPictureWidget extends StatelessWidget {

    final ScrollController scrollController1;
    final ScrollController scrollController2;
    final ScrollController scrollController3;

    LogInPictureWidget({super.key, required this.scrollController1, required this.scrollController2, required this.scrollController3});

    final List<String> row1 = [
      'lib/assets/pictures/log-in/1_1.png',
      'lib/assets/pictures/log-in/1_2.png',
      'lib/assets/pictures/log-in/1_3.png',
    ];

    final List<String> row2 = [
      'lib/assets/pictures/log-in/2_1.png',
      'lib/assets/pictures/log-in/2_2.png',
      'lib/assets/pictures/log-in/2_3.png',
    ];

    final List<String> row3 = [
      'lib/assets/pictures/log-in/3_1.png',
      'lib/assets/pictures/log-in/3_2.png',
      'lib/assets/pictures/log-in/3_3.png',
      'lib/assets/pictures/log-in/3_4.png',
    ];

    @override
    Widget build(BuildContext context) {
      return Expanded(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Row(
            children: [
              listViewWidget(scrollController1, row1),
              listViewWidget(scrollController2, row2),
              listViewWidget(scrollController3, row3),
            ],
          ),
        ),
      );
    }

    Widget listViewWidget(ScrollController controller, List<String> images){
      return SizedBox(
        width: 130,
        child: ListView.builder(
          controller: controller,
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(1),
              child: Container(
                height: 220,
                width: 130,
                decoration: BoxDecoration(
                  color: const Color(0xFF000000),
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: const Color(0xFFFFFFFF), width: 2),
                  image: DecorationImage(
                    image: AssetImage(images[index]),
                  ),
                ),
              ),
            );
          },
        ),
      );
    }
  }
