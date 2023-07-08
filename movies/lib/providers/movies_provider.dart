import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:movies/helpers/debouncer.dart';
import 'package:movies/models/models.dart';
import 'package:movies/models/response/response.dart';

class MoviesProvider extends ChangeNotifier {
  final String _apiKey = 'd13e577b620fcdaab144004b2aa29a81';
  final String _baseUrl = 'api.themoviedb.org';
  final String _language = 'es-ES';
  final String _autorization =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJkMTNlNTc3YjYyMGZjZGFhYjE0NDAwNGIyYWEyOWE4MSIsInN1YiI6IjY0YTMzOTZmOGUyMGM1MDEyZThhMGEzOSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.uagQauQn8tp3YZuA-A98vPxrMS5SbVoD9IoGTL8tDMw';

  List<Movie> onDisplayMovies = [];
  List<Movie> popularMovies = [];

  Map<int, List<Cast>> moviesCast = {};

  int _popularPage = 0;

  final debouncer = Debouncer(duration: const Duration(milliseconds: 500));

  final StreamController<List<Movie>> _suggestionStreamController =
      StreamController.broadcast();

  Stream<List<Movie>> get suggestionStream =>
      _suggestionStreamController.stream;

  MoviesProvider() {
    getOnDisplayMovies();
    getPopularMovies();
  }

  Future<String> _getJsonData(String endpoint,
      [Map<String, dynamic> options = const {}]) async {
    final url = Uri.https(_baseUrl, endpoint,
        {'language': _language, 'api_key': _apiKey, ...options});

    final response = await http.get(url, headers: {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $_autorization',
    });
    return response.body;
  }

  getOnDisplayMovies() async {
    final jsonData = await _getJsonData('3/movie/now_playing');

    final nowPlayingResponse = NowPlayingResponse.fromJson(
        json.decode(jsonData) as Map<String, dynamic>);

    onDisplayMovies = nowPlayingResponse.results;
    notifyListeners();
  }

  getPopularMovies() async {
    _popularPage++;
    final jsonData =
        await _getJsonData('3/movie/popular', {'page': '$_popularPage'});

    final popularResponse =
        PopularResponse.fromJson(json.decode(jsonData) as Map<String, dynamic>);

    popularMovies = [...popularMovies, ...popularResponse.results];
    notifyListeners();
  }

  Future<List<Cast>> getMovieCast(int movieId) async {
    if (moviesCast.containsKey(movieId)) return moviesCast[movieId]!;

    final jsonData = await _getJsonData('3/movie/$movieId/credits');

    final creditsResponse = MovieCreditsResponse.fromJson(
        json.decode(jsonData) as Map<String, dynamic>);

    moviesCast[movieId] = creditsResponse.cast;

    return creditsResponse.cast;
  }

  Future<List<Movie>> searchMovies(String query) async {
    final jsonData = await _getJsonData('3/search/movie', {'query': query});

    final searchResponse = SearchMovieResponse.fromJson(
        json.decode(jsonData) as Map<String, dynamic>);

    return searchResponse.results;
  }

  void getSuggestionsByQuery(String seachQuery) {
    debouncer.value = '';
    debouncer.onValue = (value) async {
      final results = await searchMovies(value);
      _suggestionStreamController.add(results);
    };

    final timer = Timer.periodic(const Duration(milliseconds: 300), (_) {
      debouncer.value = seachQuery;
    });

    Future.delayed(const Duration(milliseconds: 301))
        .then((_) => timer.cancel());
  }
}
