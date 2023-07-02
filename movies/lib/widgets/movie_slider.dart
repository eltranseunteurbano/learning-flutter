import 'package:flutter/material.dart';
import 'package:movies/router/app_routes.dart';

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
            itemBuilder: (_, int index) => _MoviePoster(),
          ),
        )
      ]),
    );
  }
}

class _MoviePoster extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, AppRoutes.detailsRoute,
          arguments: 'movie-instance'),
      child: Container(
          width: 130,
          height: 190,
          margin: const EdgeInsets.all(12),
          child: Column(
            children: [
              Flexible(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: const FadeInImage(
                      placeholder: AssetImage('assets/images/no-image.jpg'),
                      image:
                          NetworkImage('https://via.placeholder.com/300x400'),
                      width: 130,
                      height: 190,
                      fit: BoxFit.cover),
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                  'Starwars: El retorno del Jedi silvestre de Monte Cristo',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center),
            ],
          )),
    );
  }
}
