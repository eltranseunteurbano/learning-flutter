import 'package:designs/widgets/hard/background.dart';
import 'package:designs/widgets/hard/body.dart';
import 'package:designs/widgets/hard/custom_bottom_navigation.dart';
import 'package:flutter/material.dart';

class HardScreen extends StatelessWidget {
  const HardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Background(),
          Body()
        ]
      ),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}
