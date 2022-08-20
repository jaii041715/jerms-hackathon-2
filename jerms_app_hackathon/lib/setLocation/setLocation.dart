import 'package:flutter/material.dart';
import 'package:jerms_app_hackathon/main.dart';

void main() {
  runApp(const SetLocation());
}

class SetLocation extends StatelessWidget {
  const SetLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Set Location'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyApp()));
            // Navigate back to first route when tapped.
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
