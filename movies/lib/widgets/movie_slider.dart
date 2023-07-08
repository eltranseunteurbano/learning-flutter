import 'package:flutter/material.dart';
import 'package:movies/models/models.dart';
import 'package:movies/router/app_routes.dart';
import 'package:movies/widgets/card/card.dart';

class MovieSlider extends StatefulWidget {
  final List<Movie> movies;
  final String title;
  final Function? onNextPage;

  const MovieSlider(
      {super.key, required this.movies, required this.title, this.onNextPage});

  @override
  State<MovieSlider> createState() => _MovieSliderState();
}

class _MovieSliderState extends State<MovieSlider> {
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if (scrollController.position.pixels >=
          scrollController.position.maxScrollExtent - 500) {
        if (widget.onNextPage != null) widget.onNextPage!();
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 280,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        if (widget.title != '')
          Padding(
              padding: const EdgeInsets.only(bottom: 8, left: 16, right: 16),
              child: Text(widget.title,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold))),
        Expanded(
          child: ListView.builder(
              controller: scrollController,
              scrollDirection: Axis.horizontal,
              itemCount: widget.movies.length,
              itemBuilder: (_, int index) {
                final movie = widget.movies[index];
                movie.heroId = '${widget.title}-$index-${movie.id}';
                return Hero(
                  tag: movie.heroId!,
                  child: RegularCard(
                      onTap: () => Navigator.pushNamed(
                          context, AppRoutes.detailsRoute,
                          arguments: movie),
                      imageUrl: movie.fullPosterImg,
                      imageWidth: 130,
                      imageHeight: 190,
                      width: 130,
                      height: 190,
                      title: movie.title),
                );
              }),
        )
      ]),
    );
  }
}
