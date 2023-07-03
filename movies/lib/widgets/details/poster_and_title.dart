
import 'package:flutter/material.dart';

class PosterAndTitle extends StatelessWidget {
  const PosterAndTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: const FadeInImage(
              placeholder: AssetImage('assets/images/no-image.jpg'),
              image: NetworkImage('https://via.placeholder.com/200x300'),
              height: 150),
        ),
        const SizedBox(width: 24),
        Wrap(
          direction: Axis.vertical,
          crossAxisAlignment: WrapCrossAlignment.start,
          spacing: 4,
          children: [
            Text('movie.title',
                style: textTheme.headlineSmall,
                overflow: TextOverflow.ellipsis,
                maxLines: 2),
            Text('movie.originalTitle',
                style: textTheme.titleMedium,
                overflow: TextOverflow.ellipsis,
                maxLines: 1),
            Row(
              children: [
                const Icon(Icons.star_outline, size: 15, color: Colors.grey),
                const SizedBox(width: 4),
                Text(
                  'movie.voteAverage',
                  style: textTheme.bodySmall,
                )
              ],
            )
          ],
        )
      ]),
    );
  }
}