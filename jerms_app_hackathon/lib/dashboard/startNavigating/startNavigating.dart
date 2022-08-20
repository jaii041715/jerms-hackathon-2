import 'package:flutter/material.dart';
import 'package:jerms_app_hackathon/dashboard/dashboard.dart';
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
        child: Column(
          children: <Widget>[
            // Mall Blueprint View
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => const MallMapView()
                  )
                );
              }, child:  const Text('Mall Map View'),
            ),
            // Map Change View
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => const Dashboard()
                  )
                );
              }, child:  const Text('Go back to Dashboard'),
            ),
          ],
        ),
      ),
    );
  }
}