import 'package:cipherx/constants/constants.dart';
import 'package:cipherx/screens/add_expense_screen.dart';
import 'package:cipherx/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import '../screens/home_screen.dart';

class MyBottomNavigationBar extends StatefulWidget {
  final int selectedIndex;
  const MyBottomNavigationBar({
    Key? key,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  @override
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.selectedIndex;
  }

  void _onTabTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    if (selectedIndex == 0) {
      Navigator.pushNamed(context, HomeScreen.name);
    }
    if (selectedIndex == 1) {
      Navigator.pushNamed(context, AddExpenseScreen.name);
    }
    if (selectedIndex == 2) {
      Navigator.pushNamed(context, ProfileScreen.name);
    }
  }

  final List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home_rounded),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.add_circle_rounded),
      label: 'Add',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Profile',
    ),
  ];

  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      fixedColor: kPrimaryColor,
      backgroundColor: Colors.white,
      unselectedItemColor: kUnselectedColor,
      items: items,
      currentIndex: selectedIndex,
      onTap: _onTabTapped,
    );
  }
}


