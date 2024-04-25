import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/navigation_bar.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF000000),
        body: Column(
          children: [
            const SizedBox(height: 15,),
            _buildSearchBar(),
             const Spacer(),
             const NavigationBarWidget(selectedItem: 'search'),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: const Color(0xFF292929),
        borderRadius: BorderRadius.circular(24.36),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Row(
        children: [
          const Icon(Icons.search, color: Color(0xFF9D9D9D)),
          const SizedBox(width: 8),
          Expanded(
            child: TextField(
              style: GoogleFonts.inter(
                color: const Color(0xFF9D9D9D),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              decoration: InputDecoration(
                hintText: 'Search Pinterest',
                hintStyle: GoogleFonts.inter(
                color: const Color(0xFF9D9D9D),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
                border: InputBorder.none,
              ),
            ),
          ),
          const Icon(Icons.camera_alt, color: Color(0xFF9D9D9D)),
        ],
      ),
    );
  }
}
