import 'package:flutter/material.dart';

class PosterAndTitle extends StatelessWidget {
  final String title;
  final String originalTitle;
  final String posterPath;
  final String voteAverage;

  const PosterAndTitle(
      {super.key,
      required this.title,
      required this.originalTitle,
      required this.posterPath,
      required this.voteAverage});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: FadeInImage(
            placeholder: const AssetImage('assets/images/no-image.jpg'),
            image: NetworkImage(posterPath),
            height: 150,
            width: 100,
          ),
        ),
        const SizedBox(width: 24),
        ConstrainedBox(
          constraints:
              BoxConstraints(maxWidth: size.width - (20 * 2) - 100 - 24),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(title,
                style: textTheme.headlineSmall,
                overflow: TextOverflow.ellipsis,
                maxLines: 3),
            Text(originalTitle,
                style: textTheme.titleMedium,
                overflow: TextOverflow.ellipsis,
                maxLines: 2),
            Row(
              children: [
                const Icon(Icons.star_outline, size: 15, color: Colors.grey),
                const SizedBox(width: 4),
                Text(
                  voteAverage,
                  style: textTheme.bodySmall,
                )
              ],
            )
          ]),
        )
      ]),
    );
  }
}
