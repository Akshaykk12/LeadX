import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavbar extends StatelessWidget{

  void Function(int)? onTabChange;
  BottomNavbar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff33404F)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: GNav(
          padding: const EdgeInsets.all(16.0),
          mainAxisAlignment: MainAxisAlignment.center,
          backgroundColor: const Color(0xff33404F),
          activeColor: const Color(0xffFFFFFF),
          tabBackgroundColor: const Color(0xff00E7B1),
          tabBorderRadius: 20,
          gap: 20,
          haptic: false,
          onTabChange: (value) => onTabChange!(value),
          tabs: const [
            GButton(
              icon: Icons.leaderboard_sharp,
              text: 'Top Leads',
              iconActiveColor: Colors.white,
              iconColor: Colors.grey,
              
            ),

            GButton(
              icon: Icons.category,
              text: 'Category',
              iconActiveColor: Colors.white,
              iconColor: Colors.grey,
            )

          ],
        ),
      ),
    );
  }
}