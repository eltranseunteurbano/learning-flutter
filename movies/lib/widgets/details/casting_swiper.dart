import 'package:flutter/material.dart';
import 'package:movies/widgets/card/regular_card.dart';

class CastingSwiper extends StatelessWidget {
  const CastingSwiper({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 28),
      width: double.infinity,
      height: 180,
      color: Colors.red,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) => const RegularCard(
            width: 110,
            height: 150,
            imageUrl: 'https://via.placeholder.com/150x300',
            imageWidth: 100,
            imageHeight: 140,
            title: 'Actor name'),
      ),
    );
  }
}
