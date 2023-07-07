import 'package:flutter/material.dart';
import 'package:movies/models/models.dart';
import 'package:movies/widgets/details/details.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Movie movie = ModalRoute.of(context)!.settings.arguments as Movie;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomAppBar(
              title: movie.title, backdropPath: movie.fullBackdropPath),
          SliverList(
              delegate: SliverChildListDelegate([
            PosterAndTitle(
                title: movie.title,
                originalTitle: movie.originalTitle,
                posterPath: movie.fullPosterImg,
                voteAverage: movie.voteAverage.toString()),
            Overview(overview: movie.overview),
            CastingSwiper(movieId: movie.id)
          ]))
        ],
      ),
    );
  }
}
