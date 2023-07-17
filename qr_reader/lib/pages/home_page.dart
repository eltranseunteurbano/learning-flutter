import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/pages/pages.dart';
import 'package:qr_reader/providers/providers.dart';
import 'package:qr_reader/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: CustomAppBar(),
        body: Center(
          child: _HomePageBody(),
        ),
        bottomNavigationBar: CustomNavigationBar(),
        floatingActionButton: ScanButton(),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.centerDocked);
  }
}

class _HomePageBody extends StatelessWidget {
  const _HomePageBody();

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    int currentIndex = uiProvider.selectedBottomOption;

    final scanListProvider =
        Provider.of<ScanListProvider>(context, listen: false);

    switch (currentIndex) {
      case 0:
        scanListProvider.loadScansByType('geo');
        return const MapView();
      case 1:
        scanListProvider.loadScansByType('http');
        return const DirectionsView();
      default:
        return const HistoryPage();
    }
  }
}
