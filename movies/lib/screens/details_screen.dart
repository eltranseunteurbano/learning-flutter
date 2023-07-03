import 'package:flutter/material.dart';
import 'package:movies/widgets/details/details.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final String movie =
    //     ModalRoute.of(context)?.settings.arguments.toString() ?? 'no-movie';

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const CustomAppBar(),
          SliverList(
              delegate: SliverChildListDelegate([
            const PosterAndTitle(),
            const Overview(),
            const Overview(),
            const Overview(),
            const Overview(),
            const Overview(),
            const CastingSwiper()
          ]))
        ],
      ),
    );
  }
}
