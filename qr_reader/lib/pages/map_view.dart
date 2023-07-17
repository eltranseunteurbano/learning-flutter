import 'package:flutter/material.dart';
import 'package:qr_reader/widgets/widgets.dart';

class MapView extends StatelessWidget {
  const MapView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScansList(type: 'geo');
  }
}
