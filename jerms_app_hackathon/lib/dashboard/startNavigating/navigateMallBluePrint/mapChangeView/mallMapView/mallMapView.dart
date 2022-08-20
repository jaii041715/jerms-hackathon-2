import 'package:flutter/material.dart';
import 'package:jerms_app_hackathon/dashboard/dashboard.dart';
import 'package:jerms_app_hackathon/dashboard/startNavigating/mallInfo/mallInfo.dart';
import 'package:jerms_app_hackathon/dashboard/startNavigating/navigateMallBluePrint/mapChangeView/mallBluePrintView/mallBluePrintView.dart';

void main() {
  runApp(const MallMapView());
}


class MallMapView extends StatelessWidget {
  const MallMapView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MallMapView'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) => const MallBluePrintView()));
            // Navigate back to first route when tapped.
          },
          child: const Text('Mall Blue Print View'),
        ),
      ),
    );
  }
}