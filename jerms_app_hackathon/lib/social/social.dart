import 'package:flutter/material.dart';
import 'package:jerms_app_hackathon/dashboard/dashboard.dart';

void main() {
  runApp(const Social());
}


class Social extends StatelessWidget {
  const Social({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Social'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) =>  Dashboard()));
            // Navigate back to first route when tapped.
          },
          child: const Text('Go to Dashboard'),
        ),
      ),
    );
  }
}