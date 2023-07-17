import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/providers/providers.dart';
import 'package:qr_reader/utils/launch_route.dart';

class ScansList extends StatelessWidget {
  const ScansList({super.key, required this.type});
  final String type;

  @override
  Widget build(BuildContext context) {
    final scanListProvider = Provider.of<ScanListProvider>(context);
    final scans = scanListProvider.scans;

    return ListView.builder(
      itemCount: scans.length,
      itemBuilder: (_, i) => Dismissible(
        key: UniqueKey(),
        background: Container(color: const Color.fromARGB(99, 244, 67, 54)),
        onDismissed: (direction) {
          Provider.of<ScanListProvider>(context, listen: false)
              .deleteScansById(scans[i].id!);
        },
        direction: DismissDirection.startToEnd,
        child: ListTile(
          leading: Icon(type == 'http' ? Icons.home_rounded : Icons.map_rounded,
              color: Theme.of(context).primaryColor),
          title: Text(scans[i].value),
          subtitle: Text(scans[i].id.toString()),
          trailing: const Icon(Icons.keyboard_arrow_right, color: Colors.grey),
          onTap: () => launchRoute(context, scans[i]),
        ),
      ),
    );
  }
}
