import 'package:flutter/material.dart';
import 'package:jerms_app_hackathon/dashboard/dashboard.dart';
import 'package:jerms_app_hackathon/dashboard/startNavigating/startNavigating.dart';

void main() {
  runApp(const MallInfo());
}


class MallInfo extends StatelessWidget {
  const MallInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mall Info'),
      ),
      body: Center(
          child: Column(
            children: <Widget>[
              // Mall Map View
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context) => const StartNavigating()
                    )
                  );
                }, child:  const Text('Start Navigating'),
              ),
              // Go Back to Dashboard!
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context) => const Dashboard()
                    )
                  );
                }, child:  const Text('Go Back to Dashboard'),
              ),
            ]
          )
        ),
    );
  }
}