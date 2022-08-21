import 'package:flutter/material.dart';
import 'package:jerms_app_hackathon/dashboard/dashboard.dart';

void main() {
  runApp(const Notes());
}

class Notes extends StatelessWidget {
  const Notes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Notes'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Dashboard()));
              // Navigate back to first route when tapped.
            },
            child: const Text('Go to Dashboard'),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFFBFFFFFF),
          selectedItemColor: Color(0xFFBAA1945),
          unselectedItemColor: Color.fromARGB(255, 56, 56, 56),
          type: BottomNavigationBarType.fixed, // Fixed
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people_alt_outlined),
              label: 'Social',
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: 'Discover',
              backgroundColor: Colors.purple,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined),
              label: 'Message',
              backgroundColor: Colors.pink,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.event_note_outlined),
              label: 'Notes',
              backgroundColor: Colors.pink,
            ),
          ],
        ));
  }
}
