import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ButtomNavigation extends StatelessWidget {
  const ButtomNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Iconsax.home, color: Colors.grey),
          activeIcon: Icon(Iconsax.home, color: Colors.yellow),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Iconsax.heart, color: Colors.grey),
          activeIcon: Icon(Iconsax.heart, color: Colors.yellow),
          label: 'Favorite',
        ),
        BottomNavigationBarItem(
          icon: Icon(Iconsax.user, color: Colors.grey),
          activeIcon: Icon(Iconsax.user, color: Colors.yellow),
          label: 'Profile',
        ),
      ],
      onTap: (int index) {
        // Handle navigation to different pages based on index
        if (index == 0) {
        // Navigate to home page
        () => setState(() {
          currentTab = 0;
        })

        } else if (index == 1) {
        //   // Navigate to favorite page
        } else if (index == 2) {
        //   // Navigate to profile page
        }
      },
    );
  }
}
