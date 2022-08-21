import 'package:flutter/material.dart';
import 'package:jerms_app_hackathon/dashboard/dashboard.dart';

void main() {
  runApp(const Message());
}

class Message extends StatelessWidget {
  const Message({super.key});

  @override
  Widget build(BuildContext context) {
    Color _color = const Color(0xFFBFFFFFF);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: _color,
        title: const Text(
          'Messages',
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
          padding: const EdgeInsets.only(top: 20, left: 5),
          child: Column(children: <Widget>[
            Card(
                color: Colors.transparent,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 330,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(3)),
                ),
                child: Row(children: <Widget>[
                  Container(
                    child: Image.asset("assets/images/message-1.png",
                        width: 60, height: 60, fit: BoxFit.cover),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text('H&M',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Poppins Bold',
                                  fontSize: 20,
                                  letterSpacing: 1,
                                  color: Color(0xFFB33140C))),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text('Glad to see you again here at H&M!',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Poppins Regular',
                                  fontSize: 12,
                                  letterSpacing: 1,
                                  color: Color.fromARGB(250, 128, 128, 128))),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        '3m ago',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontFamily: 'Poppins Bold',
                            fontSize: 10,
                            letterSpacing: 1,
                            color: Color(0xFFB33140C)),
                      )),
                ])),
            Divider(
              color: Color(0xFFB757575),
              thickness: .5,
            ),
            Card(
                color: Colors.transparent,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 330,
                    color: Theme.of(context).colorScheme.outline,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(3)),
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Image.asset("assets/images/chandler.jpg",
                          width: 60, height: 60, fit: BoxFit.cover),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Text('Chandler Bing',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'Poppins Bold',
                                    fontSize: 20,
                                    letterSpacing: 1,
                                    color: Color(0xFFB33140C))),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Text('Hey! Saw you at the mall earlier!',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'Poppins Regular',
                                    fontSize: 12,
                                    letterSpacing: 1,
                                    color: Color.fromARGB(250, 128, 128, 128))),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.only(left: 30, top: 10),
                        child: Text(
                          '1h ago',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontFamily: 'Poppins Bold',
                              fontSize: 10,
                              letterSpacing: 1,
                              color: Color(0xFFB33140C)),
                        )),
                  ],
                )),
            Divider(
              color: Color(0xFFB757575),
              thickness: .5,
            ),
            Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 330,
                    color: Theme.of(context).colorScheme.outline,
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Image.asset("assets/images/msgProfile3.jpeg",
                          width: 60, height: 60, fit: BoxFit.cover),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            color: Theme.of(context).colorScheme.outline,
                            margin: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                            child: Text('Jane Doe',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'Poppins Bold',
                                    fontSize: 20,
                                    letterSpacing: 1,
                                    color: Color(0xFFB33140C))),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(10, 0, 0, 20),
                            child: Text('What did you buy?',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'Poppins Regular',
                                    fontSize: 12,
                                    letterSpacing: 1,
                                    color: Color.fromARGB(250, 128, 128, 128))),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.only(left: 125, top: 10),
                        child: Text(
                          '2d ago',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontFamily: 'Poppins Regular',
                              fontSize: 10,
                              letterSpacing: 1,
                              color: Color(0xFFB33140C)),
                        )),
                  ],
                )),
          ])),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Color(0xFFBAA1945),
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
