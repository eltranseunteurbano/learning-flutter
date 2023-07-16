import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  final options = const [
    'easy',
    'medium',
    'hard',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Designs'),
        ),
        body: ListView(
          children: [
            ...options
                .map((option) => ListTile(
                    title: Text(option[0].toUpperCase() + option.substring(1)),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () => Navigator.pushNamed(context, '/$option')))
                .toList()
          ],
        ));
  }
}
