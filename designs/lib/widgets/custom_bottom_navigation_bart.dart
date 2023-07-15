import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      type: BottomNavigationBarType.shifting,
      items: [
        BottomNavigationBarItem(
            icon: const Icon(Icons.battery_0_bar),
            label: 'Easy',
            backgroundColor: Colors.primaries[2]),
        BottomNavigationBarItem(
            icon: const Icon(Icons.battery_4_bar),
            label: 'Medium',
            backgroundColor: Colors.primaries[1]),
        BottomNavigationBarItem(
            icon: const Icon(Icons.battery_6_bar),
            label: 'Hard',
            backgroundColor: Colors.primaries[5])
      ],
      onTap: (value) => {
        setState(() {
          _selectedIndex = value;
        }),
      },
      currentIndex: _selectedIndex,
    );
  }
}
