import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:qr_reader/models/models.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  @override
  Widget build(BuildContext context) {
    final ScanModel scan =
        ModalRoute.of(context)!.settings.arguments as ScanModel;

    final position =
        CameraPosition(target: scan.getLatLng(), zoom: 18, tilt: 50);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mapa'),
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        markers: {
          Marker(
            markerId: MarkerId(scan.id.toString()),
            position: scan.getLatLng(),
            infoWindow: InfoWindow(
              title: 'Ubicación',
              snippet: scan.value,
            ),
          )
        },
        initialCameraPosition: position,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final GoogleMapController controller = await _controller.future;
          controller.animateCamera(CameraUpdate.newCameraPosition(position));
        },
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        child: const Icon(Icons.location_on),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
    );
  }
}
