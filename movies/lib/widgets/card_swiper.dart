import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:movies/models/models.dart';
import 'package:movies/router/app_routes.dart';

class CardSwiper extends StatelessWidget {
  final List<Movie> movies;

  const CardSwiper({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    if (movies.isEmpty) {
      return SizedBox(
        width: double.infinity,
        height: size.height * 0.5,
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return SizedBox(
        width: double.infinity,
        height: size.height * 0.5,
        child: Swiper(
          itemCount: movies.length,
          layout: SwiperLayout.STACK,
          itemWidth: size.width * 0.6,
          itemHeight: size.height * 0.4,
          itemBuilder: (_, int index) {
            final movie = movies[index];

            return GestureDetector(
              onTap: () => Navigator.pushNamed(context, AppRoutes.detailsRoute,
                  arguments: movie),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: FadeInImage(
                    placeholder: const AssetImage('assets/images/loading.gif'),
                    image: NetworkImage(movie.fullPosterImg),
                    fit: BoxFit.cover),
              ),
            );
          },
        ));
  }
}
