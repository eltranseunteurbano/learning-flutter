import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({Key? key}) : super(key: key);

  final options = const [
    'List View 1',
    'List View 2',
    'Alert',
    'Card',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View 1'),
      ),
      body: ListView(children: <Widget>[
        ...options
            .map((option) => ListTile(
                  title: Text(option),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                  leading: const Icon(Icons.ac_unit),
                  onTap: () {
                    if (kDebugMode) {
                      print(option);
                    }
                  },
                ))
            .toList(),
      ]),
    );
  }
}
