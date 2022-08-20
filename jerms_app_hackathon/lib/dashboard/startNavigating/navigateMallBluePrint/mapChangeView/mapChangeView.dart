import 'package:flutter/material.dart';
import 'package:jerms_app_hackathon/dashboard/dashboard.dart';
import 'package:jerms_app_hackathon/dashboard/startNavigating/mallInfo/mallInfo.dart';
import 'package:jerms_app_hackathon/dashboard/startNavigating/navigateMallBluePrint/mapChangeView/augmentedRealityView/augmentedRealityView.dart';
import 'package:jerms_app_hackathon/dashboard/startNavigating/navigateMallBluePrint/mapChangeView/mallBluePrintView/mallBluePrintView.dart';
import 'package:jerms_app_hackathon/dashboard/startNavigating/navigateMallBluePrint/mapChangeView/mallMapView/mallMapView.dart';

void main() {
  runApp(const MapChangeView());
}


class MapChangeView extends StatelessWidget {
  const MapChangeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MapChangeView'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            // Mall Map View
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => const MallMapView()
                  )
                );
              }, child:  const Text('Mall Map View'),
            ),
            // Mall Blueprint View
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => const MallBluePrintView()
                  )
                );
              }, child:  const Text('Mall Blueprint View'),
            ),
            // AR View
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => const AugmentedRealityView()
                  )
                );
              }, child:  const Text('AR View'),
            ),
            // Go Back to Mall Info
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => const MallInfo()
                  )
                );
              }, child:  const Text('Go Back to Mall Info'),
            ),
          ],
        ),
      ),
    );
  }
}