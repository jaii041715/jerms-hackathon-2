import 'package:flutter/material.dart';
import 'package:jerms_app_hackathon/dashboard/dashboard.dart';
import 'package:jerms_app_hackathon/message/message.dart';
import 'package:jerms_app_hackathon/notes/notes.dart';
import 'package:jerms_app_hackathon/social/social.dart';
import 'package:jerms_app_hackathon/discover/discover.dart';


class BottomNavBar extends StatefulWidget {
  @override
  BottomNavBarState createState() {
    return new BottomNavBarState();
  }
}

class BottomNavBarState extends State<BottomNavBar> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getBody(index),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) => setState(() => index = value),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
            backgroundColor: Color.fromRGBO(244, 67, 54, 1),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_outlined),
            label: 'Social',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
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
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFFBAA1945),
        unselectedItemColor: Color.fromARGB(250, 79, 79, 79),
      ),
    );
  }
  
  Widget _getBody(int index) {
    switch (index) {
      case 0:
        return Dashboard(); // Create this function, it should return your first page as a widget
      case 1:
        return Social(); // Create this function, it should return your second page as a widget
      case 2:
        return Discover(); // Create this function, it should return your third page as a widget
      case 3:
        return Message();  // Create this function, it should return your third page as a widget
      case 4:
        return Notes(); // Create this function, it should return your fourth page as a widget
    }

    return Center(child: Text("There is no page builder for this index."),);
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      final screen = [
        Dashboard(),
        Social(),
        Discover(),
        Message(),
        Notes()
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFFBAA1945),
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
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
