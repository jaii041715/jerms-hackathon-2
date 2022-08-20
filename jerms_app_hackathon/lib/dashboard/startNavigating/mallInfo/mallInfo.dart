import 'package:flutter/material.dart';
import 'package:jerms_app_hackathon/dashboard/dashboard.dart';
import 'package:jerms_app_hackathon/dashboard/startNavigating/navigateMallBluePrint/navigateMallBluePrint.dart';
import 'package:jerms_app_hackathon/dashboard/startNavigating/startNavigating.dart';

void main() {
  runApp(const MallInfo());
}

class MallInfo extends StatelessWidget {
  const MallInfo({super.key});

  @override
  Widget build(BuildContext context) {
    Color _color = const Color(0xFFBFFFFFF);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xFFBAA1945), //change your color here
        ),
        backgroundColor: _color,
        title: const Text(
          'Mall 3 Information',
          style: TextStyle(
            color: Color(0xFFB322E2E),
            fontFamily: 'Poppins Semi Bold',
            fontSize: 16,
            letterSpacing: 1,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
          color: Color(0xFFBFFF7EB),
          child: Column(children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  height: 280,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/Mall1.jpg"),
                          fit: BoxFit.cover)),
                ),
                Container(
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.fromLTRB(54, 205, 0, 0),
                          child: Icon(Icons.favorite_border,
                              color: Color(0xFFBFFFFFF), size: 25.0),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(111, 205, 0, 0),
                          child: Icon(Icons.share,
                              color: Color(0xFFBFFFFFF), size: 25.0),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(98, 205, 54, 0),
                          child: Icon(Icons.chat_bubble_outline,
                              color: Color(0xFFBFFFFFF), size: 25.0),
                        ),
                      ]),
                ),
                Container(
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.fromLTRB(31, 235, 0, 0),
                          child: Text("Favourites",
                              style: TextStyle(
                                  fontFamily: 'Poppins Regular',
                                  fontSize: 14,
                                  color: Color(0xFFBFFFFFF))),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(77, 235, 0, 0),
                          child: Text("Shares",
                              style: TextStyle(
                                  fontFamily: 'Poppins Regular',
                                  fontSize: 14,
                                  color: Color(0xFFBFFFFFF))),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(77, 235, 0, 8),
                          child: Text("Chats",
                              style: TextStyle(
                                  fontFamily: 'Poppins Regular',
                                  fontSize: 14,
                                  color: Color(0xFFBFFFFFF))),
                        ),
                      ]),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 20, 0, 20),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Text(
                        "Mall 3",
                        style: TextStyle(
                          fontSize: 32,
                          fontFamily: 'Poppins Regular',
                          color: Color(0xFFB343434),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: Icon(
                            Icons.near_me,
                            color: Color(0xFFBDB8780),
                            size: 30.0,
                          ),
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                margin: const EdgeInsets.fromLTRB(0, 10, 7, 0),
                                child: Text(
                                  "383 Kennington Lane",
                                  style: TextStyle(
                                      fontFamily: 'Poppins Regular',
                                      fontSize: 14,
                                      color: Color(0xFFB757575)),
                                )),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                margin: const EdgeInsets.fromLTRB(29, 10, 0, 0),
                                child: Text("Vauxhall, London, England",
                                    style: TextStyle(
                                        fontFamily: 'Poppins Regular',
                                        fontSize: 14,
                                        color: Color(0xFFB757575)))),
                          ),
                        ],
                      )
                    ],
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(58, 10, 0, 0),
                      child: Text(
                        "(1.3 km)",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Poppins Regular',
                          color: Color(0xFFB757575),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: const EdgeInsets.only(top: 15),
                          child: Icon(
                            Icons.access_time,
                            color: Color(0xFFBDB8780),
                            size: 30.0,
                          ),
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                margin: const EdgeInsets.fromLTRB(30, 20, 0, 0),
                                child: Text("Open Until 20:00 PM",
                                    style: TextStyle(
                                        fontFamily: 'Poppins Regular',
                                        fontSize: 14,
                                        color: Color(0xFFB757575)))),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Color(0xFFB757575),
              thickness: 1,
            ),
            Container(
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.fromLTRB(30, 8, 0, 0),
                      child: Icon(Icons.call,
                          color: Color(0xFFBDB8780), size: 25.0),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(127, 8, 0, 0),
                      child: Icon(Icons.pin_drop,
                          color: Color(0xFFBDB8780), size: 25.0),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(120, 8, 0, 0),
                      child: Icon(Icons.language,
                          color: Color(0xFFBDB8780), size: 25.0),
                    ),
                  ]),
            ),
            Container(
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.fromLTRB(30, 7, 0, 0),
                      child: Text("CALL",
                          style: TextStyle(
                              fontFamily: 'Poppins Regular',
                              fontSize: 14,
                              color: Color(0xFFBDB8780))),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(97, 7, 0, 0),
                      child: Text("DIRECTION",
                          style: TextStyle(
                              fontFamily: 'Poppins Regular',
                              fontSize: 14,
                              color: Color(0xFFBDB8780))),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(78, 7, 0, 8),
                      child: Text("WEBSITE",
                          style: TextStyle(
                              fontFamily: 'Poppins Regular',
                              fontSize: 14,
                              color: Color(0xFFBDB8780))),
                    ),
                  ]),
            ),
            Divider(
              color: Color(0xFFB757575),
              thickness: 1,
            ),
            Container(
                child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NavigateMallBluePrint()));
                // Navigate back to first route when tapped.
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(32, 10, 32, 20),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Color(0xFFBAA1945),
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Text("START NAVIGATING",
                      style: TextStyle(
                          color: Color(0xFFBFFFFFF),
                          fontSize: 14,
                          fontFamily: 'Poppins Medium',
                          letterSpacing: 1.25)),
                ),
              ),
            )),
          ])),
    );
  }
}
