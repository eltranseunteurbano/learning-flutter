import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  final options = [
    'easy',
    'medium',
    'hard',
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.battery_0_bar),
          label: 'Easy',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.battery_4_bar), label: 'Medium'),
        BottomNavigationBarItem(icon: Icon(Icons.battery_6_bar), label: 'Hard')
      ],
      onTap: (value) => {
        setState(() {
          _selectedIndex = value;
        }),
        Navigator.pushNamed(context, '/${options[value]}'),
      },
      currentIndex: _selectedIndex,
    );
  }
}
