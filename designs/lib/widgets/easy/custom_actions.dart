import 'package:flutter/material.dart';

class CustomActions extends StatelessWidget {
  const CustomActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.call),
          label: const Text('Call'),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.near_me),
          label: const Text('Route'),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.share),
          label: const Text('Share'),
        )
      ],
    );
  }
}
