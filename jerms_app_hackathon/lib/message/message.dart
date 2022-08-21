import 'package:flutter/material.dart';
import 'package:jerms_app_hackathon/dashboard/dashboard.dart';

void main() {
  runApp(const Message());
}

class Message extends StatelessWidget {
  const Message({super.key});

  @override
  Widget build(BuildContext context) {
    Color _color = const Color(0xFFBFFF7EB);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: _color,
          title: const Text(
            'Messages',
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
                      child: Image.asset("assets/images/msgProfile1.jpeg",
                          width: 50, height: 50, fit: BoxFit.cover),
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Text(
                                ' John Smith\n' +
                                    ' 2h ago\n' +
                                    ' It`s me again! The one and only! Nice to meet you!',
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
                      child: Image.asset("assets/images/msgProfile2.png",
                          width: 50, height: 50, fit: BoxFit.cover),
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Text(
                                ' Rick Astely\n' +
                                    ' 3h ago\n' +
                                    ' Never gonna give you up! Never gonna let you down!',
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
                      child: Image.asset("assets/images/msgProfile3.jpeg",
                          width: 50, height: 50, fit: BoxFit.cover),
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Text(
                                ' Amber Heard\n' +
                                    ' 16h ago\n' +
                                    ' My dog stepped on a bee. ;-(',
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
