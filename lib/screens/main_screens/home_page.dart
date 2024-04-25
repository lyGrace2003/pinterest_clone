import 'package:flutter/material.dart';
import '../../widgets/navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF000000),
        body: Stack(
          children: [
            Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              right: 0,
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),
                    _buildTopRow(),
                    const SizedBox(height: 5),
                    _buildImageRow1(),
                    _buildImageRow2(),
                    const SizedBox(height: 1),
                    _buildImageRow3(),
                  ],
                ),
              ),
            ),
            const NavigationBarWidget(selectedItem: 'home'),
          ],
        ),
      ),
    );
  }

  Widget _buildTopRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildAllText(),
        _buildPhotographyText(),
      ],
    );
  }

  Widget _buildAllText() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 50),
        child: Text(
          'All',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }

  Widget _buildPhotographyText() {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.only(right: 30),
        child: Text(
          'Photography',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  Widget _buildImageRow1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _buildImageBox1(),
        const SizedBox(width: 1),
        Expanded(
          child: Column(
            children: [
              _buildImageBox2(),
              const SizedBox(
                  height: 50), // Adjusted height to reduce separation
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildImageRow2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _buildImageBox3(),
        Expanded(
          child: Column(
            children: [
              _buildImageBox4(),
              const SizedBox(
                  height: 30), // Adjusted height to reduce separation
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildImageRow3() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _buildImageBox5(),
        Expanded(
          child: Column(
            children: [
              _buildImageBox6(),
              const SizedBox(
                  height: 10), // Adjusted height to reduce separation
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildImageBox1() {
    return Container(
      width: 160,
      height: 250,
      margin: const EdgeInsets.only(left: 15, top: 15),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }

  Widget _buildImageBox2() {
    return Container(
      width: 160,
      height: 200,
      margin: const EdgeInsets.only(left: 1, top: 15),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }

  Widget _buildImageBox3() {
    return Container(
      width: 160,
      height: 190,
      margin: const EdgeInsets.only(left: 15),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }

  Widget _buildImageBox4() {
    return Container(
      width: 160,
      height: 250,
      margin: const EdgeInsets.only(left: 1),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }

  Widget _buildImageBox5() {
    return Container(
      width: 160,
      height: 170,
      margin: const EdgeInsets.only(left: 15),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }

  Widget _buildImageBox6() {
    return Container(
      width: 160,
      height: 250,
      margin: const EdgeInsets.only(left: 1),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}
