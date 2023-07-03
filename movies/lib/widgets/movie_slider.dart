import 'package:flutter/material.dart';
import 'package:movies/router/app_routes.dart';
import 'package:movies/widgets/card/card.dart';

class MovieSlider extends StatelessWidget {
  const MovieSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 280,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Padding(
            padding: EdgeInsets.only(bottom: 8, left: 16, right: 16),
            child: Text('Populares',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 20,
            itemBuilder: (_, int index) => RegularCard(
                onTap: () => Navigator.pushNamed(
                    context, AppRoutes.detailsRoute,
                    arguments: 'movie-instance'),
                imageUrl: 'https://via.placeholder.com/300x400',
                imageWidth: 130,
                imageHeight: 190,
                width: 130,
                height: 190,
                title:
                    'Starwars: El retorno del Jedi silvestre de Monte Cristo'),
          ),
        )
      ]),
    );
  }
}
