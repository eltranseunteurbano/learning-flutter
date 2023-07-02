import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:movies/router/app_routes.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
        width: double.infinity,
        height: size.height * 0.5,
        child: Swiper(
          itemCount: 10,
          layout: SwiperLayout.STACK,
          itemWidth: size.width * 0.6,
          itemHeight: size.height * 0.4,
          itemBuilder: (_, int index) {
            return GestureDetector(
              onTap: () => Navigator.pushNamed(context, AppRoutes.detailsRoute,
                  arguments: 'movie'),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: const FadeInImage(
                    placeholder: AssetImage('assets/images/loading.gif'),
                    image: NetworkImage('https://via.placeholder.com/300x400'),
                    fit: BoxFit.cover),
              ),
            );
          },
        ));
  }
}