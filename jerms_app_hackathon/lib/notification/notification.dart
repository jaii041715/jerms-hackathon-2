import 'package:flutter/material.dart';
import 'package:jerms_app_hackathon/dashboard/dashboard.dart';

void main() {
  runApp(const NotificationList());
}

class NotificationList extends StatelessWidget {
  const NotificationList({super.key});

  @override
  Widget build(BuildContext context) {
    Color _color = const Color(0xFFBFFFFFF);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: _color,
        iconTheme: IconThemeData(
          color: Color(0xFFBAA1945), //change your color here
        ),
        title: const Text(
          'Notification',
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
                    child: Image.asset("assets/images/starbucksLogo.jpeg",
                        width: 60, height: 60, fit: BoxFit.cover),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text('30% Discount at Starbucks',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Poppins Bold',
                                  fontSize: 15,
                                  letterSpacing: 1,
                                  color: Color(0xFFB33140C))),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text('Enjoy your 30% discount on your first purchase!',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Poppins Regular',
                                  fontSize: 9,
                                  letterSpacing: 1,
                                  color: Color.fromARGB(250, 128, 128, 128))),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        '1m ago',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontFamily: 'Poppins Bold',
                            fontSize: 9,
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
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Image.asset("assets/images/americanExpressLogo.png",
                          width: 60, height: 60, fit: BoxFit.cover),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Text('ATM Machine Near You!',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'Poppins Bold',
                                    fontSize: 15,
                                    letterSpacing: 1,
                                    color: Color(0xFFB33140C))),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Text('I just found an ATM 50 meters near you.',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'Poppins Regular',
                                    fontSize: 10,
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
              height: 0,
              indent: 0,
              thickness: .2,
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
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Image.asset("assets/images/exitLogo.png",
                          width: 60, height: 60, fit: BoxFit.cover),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Text('Exit Found Near You.',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'Poppins Bold',
                                    fontSize: 15,
                                    letterSpacing: 1,
                                    color: Color(0xFFB33140C))),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Text('I just found an Exit 20 meters near you.',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'Poppins Regular',
                                    fontSize: 10,
                                    letterSpacing: 1,
                                    color: Color.fromARGB(250, 128, 128, 128))),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.only(left: 25, top: 10),
                        child: Text(
                          '30m ago',
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
              height: 0,
              indent: 0,
              thickness: .2,
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
                      margin: const EdgeInsets.only(top: 0),
                      child: Image.asset("assets/images/dominosLogo.jpeg",
                          width: 60, height: 60, fit: BoxFit.cover),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            color: Theme.of(context).colorScheme.outline,
                            margin: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                            child: Text('P5 Deal Purchase Promo!',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'Poppins Bold',
                                    fontSize: 15,
                                    letterSpacing: 1,
                                    color: Color(0xFFB33140C))),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(10, 0, 0, 20),
                            child: Text('What are you waiting for? Buy now!',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'Poppins Regular',
                                    fontSize: 10,
                                    letterSpacing: 1,
                                    color: Color.fromARGB(250, 128, 128, 128))),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.only(left: 55, top: 10),
                        child: Text(
                          '1h ago',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontFamily: 'Poppins Regular',
                              fontSize: 9,
                              letterSpacing: 1,
                              color: Color(0xFFB33140C)),
                        )),
                  ],
                )),
          ])),
    );
  }
}
