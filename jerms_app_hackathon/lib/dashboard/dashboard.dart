import 'package:flutter/material.dart';
import 'package:jerms_app_hackathon/dashboard/accountSettings/accountSettings.dart';
import 'package:jerms_app_hackathon/dashboard/startNavigating/mallInfo/mallInfo.dart';
import 'package:jerms_app_hackathon/dashboard/startNavigating/startNavigating.dart';
import 'package:jerms_app_hackathon/login/login.dart';

void main() {
  runApp(const Dashboard());
}


class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard')
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            // Account Settings
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => const AccountSettings()
                  )
                );
              }, child:  const Text('Go to Account Settings'),
            ),
            // Start Navigating
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => const StartNavigating()
                  )
                );
              }, child:  const Text('Start Navigating'),
            ),
            // Check Mall Info
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => const MallInfo()
                  )
                );
              }, child:  const Text('Check Mall Info'),
            ),
            // View Map
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => const MallInfo()
                  )
                );
              }, child:  const Text('View Map'),
            )
          ],
        ),
      ),
    );
  }
}