import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  const ListView2Screen({Key? key}) : super(key: key);

  final options = const [
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4',
    'Option 5',
    'Option 6'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View 2'),
      ),
      body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.ac_unit, color: Colors.primaries[0]),
              title: Text(options[index]),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
              onTap: () {
                if (kDebugMode) {
                  print(options[index]);
                }
              },
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              height: 1,
            );
          }),
    );
  }
}
