import 'package:designs/widgets/medium/background.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      const Background(),
      SafeArea(
        bottom: true,
        child: Container(
          width: double.infinity,
          alignment: Alignment.center,
          padding:
              const EdgeInsets.only(left: 60, right: 60, top: 40, bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('11°C',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
              const Text('Miércoles',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
              Expanded(child: Container()),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_drop_down_rounded),
                color: Colors.white,
                iconSize: 48,
              )
            ],
          ),
        ),
      )
    ]);
  }
}
