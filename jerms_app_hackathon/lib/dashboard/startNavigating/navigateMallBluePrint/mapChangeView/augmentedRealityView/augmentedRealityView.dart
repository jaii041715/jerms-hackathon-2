import 'package:flutter/material.dart';
import 'package:jerms_app_hackathon/dashboard/dashboard.dart';
import 'package:jerms_app_hackathon/dashboard/startNavigating/mallInfo/mallInfo.dart';
import 'package:jerms_app_hackathon/dashboard/startNavigating/navigateMallBluePrint/mapChangeView/mapChangeView.dart';

void main() {
  runApp(const AugmentedRealityView());
}


class AugmentedRealityView extends StatelessWidget {
  const AugmentedRealityView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AugmentedRealityView'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) => const MapChangeView()));
            // Navigate back to first route when tapped.
          },
          child: const Text('Map Change View!'),
        ),
      ),
    );
  }
}