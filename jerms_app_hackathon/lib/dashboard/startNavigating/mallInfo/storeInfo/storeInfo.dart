import 'package:flutter/material.dart';
import 'package:jerms_app_hackathon/dashboard/startNavigating/startNavigating.dart';

void main() {
  runApp(const StoreInfo());
}


class StoreInfo extends StatelessWidget {
  const StoreInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Store Info'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) => const StartNavigating()));
            // Navigate back to first route when tapped.
          },
          child: const Text('Go to Start Navigating'),
        ),
      ),
    );
  }
}