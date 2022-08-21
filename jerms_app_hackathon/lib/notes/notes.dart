import 'package:flutter/material.dart';
import 'package:jerms_app_hackathon/dashboard/dashboard.dart';
import 'package:jerms_app_hackathon/notes/notesListItem/notesListItem.dart';

void main() {
  runApp(const Notes());
}

class Notes extends StatelessWidget {
  const Notes({super.key});

  @override
  Widget build(BuildContext context) {
    Color _color = const Color(0xFFBFFF7EB);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: _color,
          title: const Text(
            'Notes',
            style: TextStyle(
                fontSize: 16.0,
                fontFamily: 'Poppins Medium',
                color: Colors.black,
                letterSpacing: 1),
          ),
          centerTitle: true,
        ),
        body: Container(
            color: Color(0xFFBFFF7EB),
            child: Column(children: <Widget>[
              TextButton(onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NotesListItem()));
                      }, child: Text("+ ADD NEW NOTES")),
              Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 330,
                      color: Theme.of(context).colorScheme.outline,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(3)),
                  ),
                  child: Row(children: <Widget>[
                    Container(
                      child: Image.asset("assets/images/notesColorRed.png",
                          width: 10, height: 100, fit: BoxFit.cover),
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Text(
                                    ' Shopping List1\n' +
                                    ' Sausage, Fillet, Ground Pork, Hotdog...',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'Poppins Bold',
                                    fontSize: 12,
                                    color: Color.fromARGB(250, 128, 128, 128))),
                          ),
                        ],
                      ),
                    ),
                  ])),
              Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 330,
                      color: Theme.of(context).colorScheme.outline,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(3)),
                  ),
                  child: Row(children: <Widget>[
                    Container(
                      child: Image.asset("assets/images/notesColorBlue.jpg",
                          width: 10, height: 100, fit: BoxFit.cover),
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Text(
                                    ' Shopping List2\n' +
                                    ' Chicken, Pork, Beef, Lamb...',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'Poppins Bold',
                                    fontSize: 12,
                                    color: Color.fromARGB(250, 128, 128, 128))),
                          ),
                        ],
                      ),
                    ),
                  ])),
              Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 330,
                      color: Theme.of(context).colorScheme.outline,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(3)),
                  ),
                  child: Row(children: <Widget>[
                    Container(
                      child: Image.asset("assets/images/notesColorViolet.png",
                          width: 10, height: 100, fit: BoxFit.cover),
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Text(
                                    ' Shopping List3\n' +
                                    ' Beer, Champagne, Vodka...',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'Poppins Bold',
                                    fontSize: 12,
                                    color: Color.fromARGB(250, 128, 128, 128))),
                          ),
                        ],
                      ),
                    ),
                  ])),
            ])));
  }
}
