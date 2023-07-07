import 'dart:convert';

import 'package:movies/models/models.dart';

class MovieCreditsResponse {
  int id;
  List<Cast> cast;
  List<Cast> crew;

  MovieCreditsResponse({
    required this.id,
    required this.cast,
    required this.crew,
  });

  factory MovieCreditsResponse.fromRawJson(String str) =>
      MovieCreditsResponse.fromJson(json.decode(str));

  factory MovieCreditsResponse.fromJson(Map<String, dynamic> json) =>
      MovieCreditsResponse(
        id: json["id"],
        cast: List<Cast>.from(json["cast"].map((x) => Cast.fromJson(x))),
        crew: List<Cast>.from(json["crew"].map((x) => Cast.fromJson(x))),
      );
}

