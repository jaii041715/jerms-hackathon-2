import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:jerms_app_hackathon/bottomNavBar/bottomNavBar.dart';

import 'package:jerms_app_hackathon/dashboard/accountSettings/accountSettings.dart';
import 'package:jerms_app_hackathon/dashboard/startNavigating/mallInfo/mallInfo.dart';
import 'package:jerms_app_hackathon/dashboard/startNavigating/startNavigating.dart';
import 'package:jerms_app_hackathon/discover/discover.dart';
import 'package:jerms_app_hackathon/login/login.dart';
import 'package:jerms_app_hackathon/notes/notes.dart';
import 'package:jerms_app_hackathon/setLocation/setLocation.dart';
import 'package:jerms_app_hackathon/social/social.dart';
import 'package:jerms_app_hackathon/message/message.dart';

void main() {
  runApp(const Dashboard());
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    Color _color = const Color(0xFFBFFF7EB);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: _color,
        title: Text(
          'Home',
          style: TextStyle(
            fontSize: 16.0,
            fontFamily: 'Poppins Medium',
            letterSpacing: 1,
            color: Colors.black,
          ),
        ),
        elevation: 0.0,
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none),
            onPressed: () {},
            color: Color(0xFFB322E2E),
          ),
        ],
      ),
      body: Container(
          color: Color(0xFFBFFF7EB),
          padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
          child: SingleChildScrollView(
              child: Column(children: <Widget>[
            // Account Settings
            Align(
                alignment: Alignment.centerLeft,
                child: Row(children: <Widget>[
                  Row(children: <Widget>[
                    FloatingActionButton(
                      backgroundColor: Color(0xFFBAA1945),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AccountSettings()));
                      },
                      child: Text('G',
                          style: TextStyle(
                            fontFamily: 'Poppins Regular',
                            fontSize: 25.0,
                            color: Color(0xFFBF9E9D0),
                          )),
                    )
                  ]),
                  Row(
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                              fontSize: 15.0,
                              fontFamily: 'Poppins Bold',
                              letterSpacing: 2,
                              color: Colors.black),
                          text: '  Hi, Guest!\n',
                          children: [
                            WidgetSpan(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                              ),
                            ),
                            TextSpan(
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontFamily: 'Poppins Medium',
                                  color: Colors.black),
                              text: 'Find a Mall near you',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ])),

            // Dashboard Search
            Container(
              padding: EdgeInsets.fromLTRB(5, 25, 5, 15),
              child: TextField(
                textAlign: TextAlign.left,
                decoration: new InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding: const EdgeInsets.all(10),
                  suffixIcon: new Icon(
                    Icons.search,
                    color: Color(0xFFBC4C4C4),
                  ),
                  hintText: "Search",
                  hintStyle: TextStyle(
                      fontFamily: 'Poppins-Regular',
                      fontSize: 14,
                      color: Color(0xFFB707070)),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: const BorderSide(
                      color: Color(0xFFBC4C4C4),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(2.0)),
                    borderSide: BorderSide(color: Color(0xFFBC4C4C4)),
                  ),
                ),
              ),
            ),

            CarouselSlider(
              items: [
                Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Theme.of(context).colorScheme.outline,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(3)),
                  ),
                  child: Image.asset("assets/images/bagSale.jpg",
                      width: 500, height: 100, fit: BoxFit.cover),
                ),
                Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Theme.of(context).colorScheme.outline,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(3)),
                  ),
                  child: Column(children: [
                    Image.asset("assets/images/backToSchool.jpeg",
                        width: 500, height: 100, fit: BoxFit.cover),
                  ]),
                ),
              ],
              options: CarouselOptions(
                height: 110.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 11,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),

            CarouselSlider(
              items: [
                Text("-",
                    style: TextStyle(fontSize: 200, color: Color(0xFFBAA1945))),
                Text("-"),
              ],
              options: CarouselOptions(
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 1,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 200),
                viewportFraction: 0.8,
              ),
            ),

            //Are you here?
            Container(
              margin: const EdgeInsets.fromLTRB(4, 0, 15, 0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Are you here?',
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Poppins Medium',
                      letterSpacing: 1.5,
                      color: Colors.black),
                ),
              ),
            ),

            // Current Mall You're In
            Card(
                margin: EdgeInsets.zero,
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3.0),
                ),
                elevation: 0,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Image.asset(
                          "assets/images/Mall1.2.jpg",
                          height: 140,
                        ),
                        margin: EdgeInsets.only(right: 22, top: 5, left: 5),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                margin: const EdgeInsets.only(top: 10),
                                child: Text('Mall 3',
                                    style: TextStyle(
                                        fontFamily: 'Poppins Regular',
                                        fontSize: 15,
                                        color: Color(0xFFB343434))),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                              child: Text('Open until 10:00 PM',
                                  style: TextStyle(
                                      fontFamily: 'Poppins Regular',
                                      fontSize: 13,
                                      color:
                                          Color.fromARGB(250, 128, 128, 128))),
                            ),
                            Container(
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Color(0xFFBAA1945),
                                    borderRadius: BorderRadius.circular(3)),
                                child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const StartNavigating()));
                                    },
                                    child: Text("START NAVIGATING",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 9,
                                          fontFamily: 'Poppins Medium',
                                          letterSpacing: 2,
                                        )))),
                            Container(
                                margin: const EdgeInsets.only(left: 5, top: 0),
                                child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const MallInfo()));
                                    },
                                    child: Text("CHECK MALL INFO",
                                        style: TextStyle(
                                          height: 0.5,
                                          color: Color(0xFFBAA1945),
                                          fontSize: 9,
                                          fontFamily: 'Poppins Medium',
                                          letterSpacing: 2,
                                        )))),
                          ],
                        ),
                      ),
                    ])),

            // Malls near you
            Container(
              margin: const EdgeInsets.fromLTRB(5, 10, 0, 10),
              child: Row(
                children: <Widget>[
                  Text(
                    'Malls Near You',
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Poppins Medium',
                        letterSpacing: 1.5,
                        color: Colors.black),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 110, top: 2),
                    child: Row(
                      children: <Widget>[
                        Text('4.5 mi',
                            textAlign: TextAlign.end,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 10.0,
                                fontFamily: 'Poppins Medium',
                                letterSpacing: 1.5,
                                color: Color(0xFFBAA1945))),
                        Icon(Icons.edit, color: Color(0xFFBAA1945), size: 12.0),
                      ],
                    ),
                  )
                ],
              ),
            ),

            Container(
                child: Row(
              children: <Widget>[
                Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Theme.of(context).colorScheme.outline,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(3)),
                  ),
                  child: Column(children: [
                    Image.asset("assets/images/mallnearyou1.jpeg",
                        width: 160, height: 80, fit: BoxFit.cover),
                    Container(
                      margin: const EdgeInsets.only(left: 10, top: 10),
                      height: 50,
                      width: 160,
                      child: Text("Mall 1\nDescription",
                          style: TextStyle(
                              fontFamily: 'Poppins Regular',
                              fontSize: 15,
                              color: Color(0xFFB343434))),
                    )
                  ]),
                ),
                Card(
                    margin: const EdgeInsets.only(left: 0),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Theme.of(context).colorScheme.outline,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(3)),
                    ),
                    child: Column(children: [
                      Image.asset("assets/images/mallnearyou2.jpeg",
                          width: 160, height: 80, fit: BoxFit.cover),
                      Container(
                        margin: const EdgeInsets.only(left: 10, top: 10),
                        height: 50,
                        width: 160,
                        child: Text("Mall 2\nDescription",
                            style: TextStyle(
                                fontFamily: 'Poppins Regular',
                                fontSize: 15,
                                color: Color(0xFFB343434))),
                      ),
                    ])),
              ],
            )),
          ]))),
    );
  }

  setState(Null Function() param0) {}
}
