import 'package:flutter/material.dart';

class BuildLeading extends StatelessWidget {
  final Function close;
  const BuildLeading({super.key, required this.close});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => close(context, null),
    );
  }
}
