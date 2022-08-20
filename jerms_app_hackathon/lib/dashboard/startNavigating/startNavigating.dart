import 'package:flutter/material.dart';
import 'package:jerms_app_hackathon/dashboard/startNavigating/navigateMallBluePrint/mapChangeView/mallMapView/mallMapView.dart';

void main() {
  runApp(const StartNavigating());
}


class StartNavigating extends StatelessWidget {
  const StartNavigating({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Start Navigating'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) => const MallMapView()));
            // Navigate back to first route when tapped.
          },
          child: const Text('Go to Mall Map View'),
        ),
      ),
    );
  }
}