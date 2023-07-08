import 'package:flutter/material.dart';
import 'package:movies/providers/providers.dart';
import 'package:movies/widgets/search/search.dart';
import 'package:provider/provider.dart';

class MovieSearchDelegatePage extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      if (query.isNotEmpty)
        IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () => query = '',
        ),
      IconButton(icon: const Icon(Icons.search), onPressed: () {})
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return BuildLeading(close: close);
  }

  @override
  Widget buildResults(BuildContext context) {
    return const BuildResults();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context, listen: false);
    moviesProvider.getSuggestionsByQuery(query);
    return BuildSuggestions(
        query: query, search: moviesProvider.suggestionStream);
  }
}
