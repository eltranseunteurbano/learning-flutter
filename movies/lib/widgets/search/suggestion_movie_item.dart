import 'package:flutter/material.dart';
import 'package:movies/models/models.dart';
import 'package:movies/router/app_routes.dart';

class SuggestionMovieItem extends StatelessWidget {
  final Movie movie;
  const SuggestionMovieItem({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    movie.heroId = 'search-${movie.id}';

    return Hero(
      tag: movie.heroId!,
      child: ListTile(
          leading: FadeInImage(
            placeholder: const AssetImage('assets/images/no-image.jpg'),
            image: NetworkImage(movie.fullPosterImg),
            width: 50,
            fit: BoxFit.contain,
          ),
          title: Text(movie.title),
          subtitle: Text(movie.originalTitle),
          onTap: () => Navigator.pushNamed(context, AppRoutes.detailsRoute,
              arguments: movie)),
    );
  }
}
