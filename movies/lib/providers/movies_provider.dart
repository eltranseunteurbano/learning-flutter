import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:movies/models/models.dart';

class MoviesProvider extends ChangeNotifier {
  final String _apiKey = 'd13e577b620fcdaab144004b2aa29a81';
  final String _baseUrl = 'api.themoviedb.org';
  final String _language = 'es-ES';
  final String _autorization =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJkMTNlNTc3YjYyMGZjZGFhYjE0NDAwNGIyYWEyOWE4MSIsInN1YiI6IjY0YTMzOTZmOGUyMGM1MDEyZThhMGEzOSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.uagQauQn8tp3YZuA-A98vPxrMS5SbVoD9IoGTL8tDMw';

  List<Movie> onDisplayMovies = [];
  MoviesProvider() {
    getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
    var url = Uri.https(_baseUrl, '3/movie/now_playing',
        {'language': _language, 'api_key': _apiKey});

    final response = await http.get(url, headers: {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $_autorization'
    });

    final nowPlayingResponse = NowPlayingResponse.fromJson(
        json.decode(response.body) as Map<String, dynamic>);

    onDisplayMovies = nowPlayingResponse.results;
    notifyListeners();
  }
}
