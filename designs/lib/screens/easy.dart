import 'package:designs/widgets/easy/location_with_stars.dart';
import 'package:designs/widgets/easy/custom_actions.dart';
import 'package:flutter/material.dart';

class EasyScreen extends StatelessWidget {
  const EasyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const FadeInImage(
            width: double.infinity,
            height: 400,
            placeholder: AssetImage('assets/images/no-image.jpg'),
            image: AssetImage('assets/images/lake.jpg'),
            fit: BoxFit.cover,
          ),
          Container(
              padding: const EdgeInsets.all(24),
              child: const Column(
                children: [
                  LocationWithStars(),
                  SizedBox(height: 16),
                  CustomActions(),
                  SizedBox(height: 16),
                  Text(
                    'Adipisicing adipisicing occaecat qui fugiat aliqua enim aute sunt eu et. Enim consectetur non ad velit enim ad consectetur laboris sunt deserunt. Deserunt mollit tempor cillum voluptate cupidatat consectetur laborum excepteur. Ex commodo ullamco non ad aliquip. Minim adipisicing proident aliqua sit ipsum aliquip velit laboris adipisicing mollit irure ut.',
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
