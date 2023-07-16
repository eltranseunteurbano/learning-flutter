import 'package:designs/widgets/hard/pink_box.dart';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key});
  final boxDecoration = const BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xff2E305F), Color(0xff202333)],
          stops: [0.2, 0.8]));

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: boxDecoration,
      ),
      const Positioned(top: -100, left: -30, child: PinkBox())
    ]);
  }
}
