import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/alert_dialog_box.dart';
import 'package:flutter_widgets/widgets/dismissible.dart';
import 'package:flutter_widgets/widgets/rows_columns.dart';
import 'package:flutter_widgets/widgets/snackbar.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  PageController pageController = PageController();
  int selectedIndex = 0;
  // List<Widget> widgets = [
  //   Text('Home'),
  //   Text('Add'),
  //   Text('Search'),
  //   Text('Profile'),
  // ];

  void onTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).primaryColor,
      //   title: Text(
      //     'Bottom Navigation Bar',
      //     style: TextStyle(color: Colors.white),
      //   ),
      // ),
      body: PageView(
        controller: pageController,
        children: const [
          AlertWidget(),
          DismissibleWidget(),
          RowsCols(),
          SnackBarWidget()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        currentIndex: selectedIndex,
        onTap: onTapped,
      ),
    );
  }
}
