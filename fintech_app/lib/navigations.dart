import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  var selectedIndex = 0;

  List<Widget> widgets = [
    const Text('home'),
    const Text('Activities'),
    const Text('Card'),
    const Text('Profile')
  ];

  void onItemTapped(int index) {
    selectedIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color(0xEFEFEFEF),
      type: BottomNavigationBarType.fixed,
      currentIndex: selectedIndex,
      selectedItemColor: Colors.black,
      onTap: onItemTapped,
      unselectedItemColor: Colors.grey,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.local_activity_sharp,
            ),
            label: 'Activities'),
        BottomNavigationBarItem(
            icon: Icon(
              Iconsax.card,
            ),
            label: 'Cards'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
            ),
            label: 'Profile'),
      ],
    );
  }
}
