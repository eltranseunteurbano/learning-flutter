import 'package:designs/screens/easy.dart';
import 'package:designs/screens/hard.dart';
import 'package:designs/screens/medium.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
          index: _selectedIndex,
          children: const [EasyScreen(), MediumScreen(), HardScreen()]),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
              icon: const Icon(Icons.battery_0_bar),
              label: 'Easy',
              backgroundColor: Colors.primaries[2]),
          const BottomNavigationBarItem(
              icon: Icon(Icons.battery_4_bar),
              label: 'Medium',
              backgroundColor: Color(0xff30BAD6)),
          BottomNavigationBarItem(
              icon: const Icon(Icons.battery_6_bar),
              label: 'Hard',
              backgroundColor: Colors.primaries[1])
        ],
        onTap: (value) => {
          setState(() {
            _selectedIndex = value;
          }),
        },
        currentIndex: _selectedIndex,
      ),
    );
  }
}
