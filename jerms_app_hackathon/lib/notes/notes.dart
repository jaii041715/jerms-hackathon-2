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
          iconTheme: IconThemeData(
            color: Color(0xFFBAA1945), //change your color here
          ),
          backgroundColor: _color,
          title: const Text(
            'Notes',
            style: TextStyle(
                fontSize: 16.0,
                fontFamily: 'Poppins Medium',
                color: Color(0xFFB322E2E),
                letterSpacing: 1),
          ),
          centerTitle: true,
        ),
        body: Container(
            color: Color(0xFFBFFF7EB),
            child: Column(children: <Widget>[
              Container(
                child: Row(children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(left: 20, top: 3),
                    child: Text(
                      'Recent',
                      style: TextStyle(
                          fontFamily: 'Poppins Regular',
                          fontSize: 16,
                          letterSpacing: 1,
                          color: Color(0xFFB322E2E)),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 124, top: 3),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NotesListItem()));
                      },
                      child: Text(
                        '+ ADD NEW NOTES',
                        textAlign: TextAlign.end,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontFamily: 'Poppins Regular',
                            fontSize: 16,
                            letterSpacing: 1,
                            color: Color(0xFFBAA1945)),
                      ),
                    ),
                  )
                ]),
              ),
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
                      child: Image.asset("assets/images/pink-notes.jpg",
                          width: 10, height: 80, fit: BoxFit.cover),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text('Food Shopping List',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'Poppins Bold',
                                    fontSize: 18,
                                    letterSpacing: 1,
                                    color: Color(0xFFB322E2E))),
                          ),
                          Container(
                            child: Text('Bacon, Eggs, Chicken, Fish, Cabbage..',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'Poppins Regular',
                                    fontSize: 12,
                                    letterSpacing: .88,
                                    color: Color(0xFFB322E2E))),
                          )
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
                      child: Image.asset("assets/images/orange-notes.jpg",
                          width: 10, height: 80, fit: BoxFit.cover),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text('Other Notes',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'Poppins Bold',
                                    fontSize: 18,
                                    letterSpacing: 1,
                                    color: Color(0xFFB322E2E))),
                          ),
                          Container(
                            child: Text('My other notes on my mall shopping.',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'Poppins Regular',
                                    fontSize: 12,
                                    letterSpacing: .88,
                                    color: Color(0xFFB322E2E))),
                          )
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
                      child: Image.asset("assets/images/green-notes.jpg",
                          width: 10, height: 80, fit: BoxFit.cover),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text('School Supplies Shopping List',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'Poppins Bold',
                                    fontSize: 18,
                                    letterSpacing: 1,
                                    color: Color(0xFFB322E2E))),
                          ),
                          Container(
                            child: Text('Notebooks, Ballpen, Paper, Crayons..',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'Poppins Regular',
                                    fontSize: 12,
                                    letterSpacing: .88,
                                    color: Color(0xFFB322E2E))),
                          )
                        ],
                      ),
                    ),
                  ])),
            ])));
  }
}
