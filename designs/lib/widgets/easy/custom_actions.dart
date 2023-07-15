import 'package:designs/widgets/easy/action_button.dart';
import 'package:flutter/material.dart';

class CustomActions extends StatelessWidget {
  const CustomActions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ActionButton(icon: Icons.call, label: 'Call'),
        ActionButton(icon: Icons.near_me, label: 'Route'),
        ActionButton(icon: Icons.share, label: 'Share'),
      ],
    );
  }
}
