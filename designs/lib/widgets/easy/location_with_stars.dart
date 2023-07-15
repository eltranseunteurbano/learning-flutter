import 'package:flutter/material.dart';

class LocationWithStars extends StatelessWidget {
  const LocationWithStars({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text('Kandersteg, Switzerland',
                style: TextStyle(color: Colors.grey)),
          ],
        ),
        Row(
          children: [
            Icon(Icons.star, color: Colors.red),
            SizedBox(width: 4),
            Text(
              '41',
              style: TextStyle(fontSize: 18),
            )
          ],
        )
      ],
    );
  }
}
