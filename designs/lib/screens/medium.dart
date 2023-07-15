import 'package:designs/widgets/medium/page1.dart';
import 'package:designs/widgets/medium/page2.dart';
import 'package:flutter/material.dart';

class MediumScreen extends StatelessWidget {
  const MediumScreen({super.key});

  final boxDecoration = const BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.5, 0.5],
          colors: [Color(0xff76EBCE), Color(0xff30BAD6)]));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: boxDecoration,
        child: PageView(
          scrollDirection: Axis.vertical,
          children: const [Page1(), Page2()],
        ),
      ),
    );
  }
}
