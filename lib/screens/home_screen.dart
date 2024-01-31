import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Favorite.dart';
import 'package:flutter_application_1/screens/Profile.dart';
import 'package:flutter_application_1/screens/home.dart';
import 'package:flutter_application_1/theme/Colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentTab = 0;
  List screens = const [
    Home(),
    Favorite(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        iconSize: 16,
        selectedItemColor: bgPrimary,
        selectedFontSize: 14,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Iconsax.home,
                color: currentTab == 0 ? bgPrimary : Colors.grey),
            activeIcon: Icon(Iconsax.home,
                color: currentTab == 0 ? bgPrimary : Colors.grey),
            label: navigationMenu('Home', 0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.heart,
                color: currentTab == 1 ? bgPrimary : Colors.grey),
            activeIcon: Icon(Iconsax.heart,
                color: currentTab == 1 ? bgPrimary : Colors.grey),
            label: navigationMenu('Favorite', 1),
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.user,
                color: currentTab == 2 ? bgPrimary : Colors.grey),
            activeIcon: Icon(Iconsax.user,
                color: currentTab == 2 ? bgPrimary : Colors.grey),
            label: navigationMenu('Profile', 2),
          ),
        ],
        onTap: (int index) {
          // Handle navigation to different pages based on index
          if (index == 0) {
            setState(() => currentTab = 0);
          } else if (index == 1) {
            setState(() => currentTab = 1);
          } else if (index == 2) {
            setState(() => currentTab = 2);
          }
        },
      ),
      body: screens[currentTab],
    );
  }

  String? navigationMenu(text, tab) {
    return Text(
      text,
      style: GoogleFonts.nunito(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: currentTab == tab ? bgPrimary : Colors.grey,
      ),
    ).data;
  }
}
