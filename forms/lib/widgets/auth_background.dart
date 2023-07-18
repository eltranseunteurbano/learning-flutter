import 'package:flutter/material.dart';
import 'package:forms/widgets/widgets.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;

  const AuthBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(children: [
        const _ColorfullBox(
          startColor: Colors.indigo,
          endColor: Colors.deepPurpleAccent,
        ),
        _HeaderIcon(),
        child,
      ]),
    );
  }
}

class _HeaderIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          width: double.infinity,
          margin: const EdgeInsets.all(32),
          child: const Icon(
            Icons.person_pin,
            color: Colors.white,
            size: 100,
          )),
    );
  }
}

class _ColorfullBox extends StatelessWidget {
  final Color startColor;
  final Color endColor;

  const _ColorfullBox({required this.startColor, required this.endColor});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
        width: double.infinity,
        height: size.height * 0.4,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              startColor,
              endColor,
            ],
          ),
        ),
        child: const Stack(
          children: [
            Positioned(top: 90, left: 30, child: Bubble()),
            Positioned(top: -40, left: -30, child: Bubble()),
            Positioned(top: -50, right: -20, child: Bubble()),
            Positioned(bottom: -50, left: 10, child: Bubble()),
            Positioned(bottom: 120, right: 20, child: Bubble()),
          ],
        ));
  }
}
