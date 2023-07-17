import 'package:flutter/material.dart';
import 'package:qr_reader/widgets/widgets.dart';

class DirectionsView extends StatelessWidget {
  const DirectionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScansList(type: 'http');
  }
}
