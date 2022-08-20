import 'package:flutter/material.dart';

void main() {
  runApp(const NotesListItem());
}


class NotesListItem extends StatelessWidget {
  const NotesListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NotesListItem'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) => const NotesListItem()));
            // Navigate back to first route when tapped.
          },
          child: const Text('Go to Notes'),
        ),
      ),
    );
  }
}