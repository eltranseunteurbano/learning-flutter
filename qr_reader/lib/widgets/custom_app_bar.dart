import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/providers/providers.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: const Text('Historial'),
      actions: [
        IconButton(
          icon: const Icon(Icons.delete_forever),
          onPressed: () {
            final scanListProvider =
                Provider.of<ScanListProvider>(context, listen: false);
            scanListProvider.deleteAllScans();
          },
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
