import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Screen'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          children: [
            const CustomCardType1(),
            Container(
                margin: const EdgeInsets.all(8.0),
                child: const CustomCardType2(
                  imgUrl: 'https://picsum.photos/400/250',
                  message: '',
                ))
          ],
        ));
  }
}
