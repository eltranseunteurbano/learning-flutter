import 'package:flutter/cupertino.dart';
import 'package:movies/models/models.dart';
import 'package:movies/providers/providers.dart';
import 'package:movies/widgets/card/regular_card.dart';
import 'package:provider/provider.dart';

class CastingSwiper extends StatelessWidget {
  final int movieId;

  const CastingSwiper({super.key, required this.movieId});

  @override
  Widget build(BuildContext context) {
    final movieProvider = Provider.of<MoviesProvider>(context, listen: false);

    return FutureBuilder(
      future: movieProvider.getMovieCast(movieId),
      builder: (_, AsyncSnapshot<List<Cast>> snapshot) {
        if (!snapshot.hasData) {
          return Container(
            constraints: const BoxConstraints(maxWidth: 150),
            margin: const EdgeInsets.only(bottom: 28),
            width: double.infinity,
            height: 180,
            child: const CupertinoActivityIndicator(),
          );
        }

        final List<Cast> castItems = snapshot.data!;

        return Container(
          margin: const EdgeInsets.only(bottom: 28),
          width: double.infinity,
          height: 180,
          child: ListView.builder(
              itemCount: castItems.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                final member = castItems[index];
                return RegularCard(
                    width: 110,
                    height: 150,
                    imageUrl: member.fullProfilePath,
                    imageWidth: 100,
                    imageHeight: 140,
                    title: member.name,
                    maxLines: 1);
              }),
        );
      },
    );
  }
}
