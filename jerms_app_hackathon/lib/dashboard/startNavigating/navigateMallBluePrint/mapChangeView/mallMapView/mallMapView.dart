import 'package:flutter/material.dart';
import 'package:jerms_app_hackathon/dashboard/dashboard.dart';
import 'package:jerms_app_hackathon/dashboard/startNavigating/mallInfo/mallInfo.dart';
import 'package:jerms_app_hackathon/dashboard/startNavigating/navigateMallBluePrint/mapChangeView/mallBluePrintView/mallBluePrintView.dart';
import 'package:jerms_app_hackathon/dashboard/startNavigating/navigateMallBluePrint/mapChangeView/mapChangeView.dart';

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
        child: Column(
          children: <Widget>[
            // Mall Blueprint View
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => const MallBluePrintView()
                  )
                );
              }, child:  const Text('Select a Store'),
            ),
            // Map Change View
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => const MapChangeView()
                  )
                );
              }, child:  const Text('Map Change View'),
            ),
          ],
        ),
      ),
    );
  }
}