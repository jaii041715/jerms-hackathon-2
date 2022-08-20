import 'package:flutter/material.dart';
import 'package:jerms_app_hackathon/dashboard/startNavigating/navigateMallBluePrint/mapChangeView/mapChangeView.dart';

void main() {
  runApp(const MallBluePrintView());
}


class MallBluePrintView extends StatelessWidget {
  const MallBluePrintView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MallBluePrintView'),
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