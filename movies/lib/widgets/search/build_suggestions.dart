import 'package:flutter/material.dart';
import 'package:movies/models/models.dart';
import 'package:movies/widgets/search/search.dart';

class BuildSuggestions extends StatelessWidget {
  final String query;
  final Function search;

  const BuildSuggestions(
      {super.key, required this.query, required this.search});

  @override
  Widget build(BuildContext context) {
    if (query.isEmpty) {
      return const Center(
        child: Icon(Icons.movie_creation_outlined,
            color: Colors.black38, size: 130),
      );
    }

    return FutureBuilder(
        future: search(query),
        builder: (_, AsyncSnapshot<List<Movie>> snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          final movies = snapshot.data!;

          return ListView.builder(
              itemCount: movies.length,
              itemBuilder: (_, int index) =>
                  SuggestionMovieItem(movie: movies[index]));
        });
  }
}
