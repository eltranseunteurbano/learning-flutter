import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stan Lee'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.indigo.shade900,
                  child: const Text('SL'),
                )
              ],
            ),
          ),
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          radius: 110,
          backgroundImage:
              NetworkImage('https://i.blogs.es/85aa44/stan-lee/840_560.jpg'),
        ),
      ),
    );
  }
}
