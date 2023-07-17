import 'package:flutter/material.dart';
import 'package:qr_reader/models/models.dart';
import 'package:url_launcher/url_launcher.dart';

launchRoute(BuildContext context, ScanModel scan) async {
  final Uri url = Uri.parse(scan.value);
  if (scan.type == 'http') {
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  } else if (scan.type == 'geo') {
    Navigator.pushNamed(context, 'map', arguments: scan);
  } else {}
}
