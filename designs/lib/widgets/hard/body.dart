import 'package:designs/widgets/hard/page_title.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: SafeArea(
        bottom: true,
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [PageTitle()],
          ),
        ),
      ),
    );
  }
}
