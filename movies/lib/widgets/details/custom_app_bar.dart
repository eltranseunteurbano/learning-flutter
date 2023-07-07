import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final String backdropPath;
  const CustomAppBar(
      {super.key, required this.title, required this.backdropPath});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.indigo,
      expandedHeight: 200,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: false,
        titlePadding: const EdgeInsets.all(0),
        title: Container(
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
          color: Colors.black12,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ),
        background: FadeInImage(
            placeholder: const AssetImage('assets/images/loading.gif'),
            image: NetworkImage(backdropPath),
            fit: BoxFit.cover),
      ),
    );
  }
}
