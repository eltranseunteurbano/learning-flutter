import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  final Widget child;

  const CardContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 400,
      padding: const EdgeInsets.all(24),
      margin: const EdgeInsets.symmetric(horizontal: 32),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 0),
            blurRadius: 15,
          )
        ],
      ),
      child: child,
    );
  }
}
