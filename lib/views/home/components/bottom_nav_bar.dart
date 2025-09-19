import 'package:flutter/material.dart';
import 'package:owala_app/utils/consts.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedindex;
  final ValueChanged<int> onItemTapped;



  const BottomNavBar({super.key, required this.selectedindex, required this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
         BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: "Wishlist",
        ),
         BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: "Setting",
        ),
         BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Profile",
        ),
      ],
      currentIndex: selectedindex,
      selectedItemColor: primaryColor,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      onTap: onItemTapped,
    );
  }
}