import 'package:flutter/material.dart';
import 'package:movies/providers/providers.dart';
import 'package:movies/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Películas'),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Wrap(
          alignment: WrapAlignment.start,
          runSpacing: 24,
          children: [
            CardSwiper(movies: moviesProvider.onDisplayMovies),
            const MovieSlider(),
            const MovieSlider(),
            const MovieSlider(),
            const MovieSlider()
          ],
        ),
      ),
    );
  }
}
