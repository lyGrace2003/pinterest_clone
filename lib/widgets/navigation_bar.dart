
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationBarWidget extends StatefulWidget {
  final String selectedItem;

  const NavigationBarWidget({super.key, required this.selectedItem});

  @override
  // ignore: library_private_types_in_public_api
  _NavigationBarWidgetState createState() => _NavigationBarWidgetState();
}

class _NavigationBarWidgetState extends State<NavigationBarWidget>  {

  late String _selectedItem;

  @override
  void initState() {
    super.initState();
    _selectedItem = widget.selectedItem;
  }

 @override
 Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      left: 0,
      top: 0,
      child: Row(
        children: [
          Container(
            height: 140,
            width: MediaQuery.of(context).size.width,
            color: const Color(0xFF000000),
            child: Row(
              children: [
                _navItems('Home', 'lib/assets/icons/Home.svg', _selectedItem == 'home', () => setState(() => _selectedItem = 'home'),),
                const SizedBox(width: 75,),
                _navItems('Search', 'lib/assets/icons/Search.svg', _selectedItem == 'search', () => setState(() => _selectedItem = 'search'),),
                const SizedBox(width: 75,),
                _navItems('Create', 'lib/assets/icons/Create.svg', _selectedItem == 'create', () => setState(() => _selectedItem = 'create'),),
                const SizedBox(width: 75,),
                _navItems('Inbox', 'lib/assets/icons/Inbox.svg', _selectedItem == 'inbox', () => setState(() => _selectedItem = 'inbox'),),
                const SizedBox(width: 75,),
                _navItems('Saved', 'iconPath', _selectedItem == 'saved', () => setState(() => _selectedItem = 'saved'),)
              ],
            ),
          ),
        ],
      ),
    );
 }

 Widget _navItems(String title, String iconPath, bool isSelected, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 80,
        height: 80,
        child: Column(
          children: [
            SizedBox(
              width: 40,
              height: 40,
              child: SvgPicture.asset(iconPath, color: isSelected
                    ? const Color(0xFFFFFFFF)
                    : const Color(0xFFA3A3A3),),
            ),
            const SizedBox(height: 5,),
            Text(
              title, 
              style: GoogleFonts.inter(
                 color: isSelected
                    ? const Color(0xFFFFFFFF)
                    : const Color(0xFFA3A3A3),
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
 }
 
}
