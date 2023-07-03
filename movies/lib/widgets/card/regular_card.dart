import 'package:flutter/material.dart';

class RegularCard extends StatelessWidget {
  final double width;
  final double height;

  final String imageUrl;
  final double imageWidth;
  final double imageHeight;

  final String title;
  final void Function()? onTap;

  const RegularCard({
    super.key,
    required this.imageUrl,
    required this.width,
    required this.height,
    required this.title,
    required this.imageWidth,
    required this.imageHeight,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: width,
          height: height,
          margin: const EdgeInsets.all(12),
          child: Column(
            children: [
              Flexible(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: FadeInImage(
                      placeholder:
                          const AssetImage('assets/images/no-image.jpg'),
                      image: NetworkImage(imageUrl),
                      width: imageWidth,
                      height: imageHeight,
                      fit: BoxFit.cover),
                ),
              ),
              const SizedBox(height: 4),
              Text(title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center),
            ],
          )),
    );
  }
}
