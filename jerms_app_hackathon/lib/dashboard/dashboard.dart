import 'dart:math';


import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


import 'package:jerms_app_hackathon/dashboard/accountSettings/accountSettings.dart';
import 'package:jerms_app_hackathon/dashboard/startNavigating/mallInfo/mallInfo.dart';
import 'package:jerms_app_hackathon/dashboard/startNavigating/startNavigating.dart';
import 'package:jerms_app_hackathon/login/login.dart';
import 'package:jerms_app_hackathon/setLocation/setLocation.dart';

void main() {
  runApp(const Dashboard());
}


class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    Color _color = const Color(0xFFBFFF7EB);
    return Scaffold
    (
      appBar: AppBar(
        backgroundColor: _color,
        title: const Text(
          'Home',
          style: TextStyle(
              color: Color(0xFFB322E2E),
              fontFamily: 'Poppins Semi Bold',
              fontSize: 16),
        ),
        centerTitle: true,
      ),
      body: Container
      (
        padding: EdgeInsets.fromLTRB(10, 30, 10, max(58, 58)),
        width: double.infinity,
        decoration: BoxDecoration(color: Color(0xFFBFFF7EB)),
        child: Column
        (
          children: <Widget>
          [
            // Account Settings
            Align(
              alignment: Alignment.centerLeft,
              child: Row
               (
                children: 
                <Widget>[
                  Row(
                    children: 
                    <Widget>[
                      FloatingActionButton
                      (
                        backgroundColor: Color(0xFFBAA1945),
                        onPressed: ()
                        {
                          Navigator.push
                          (
                            context, MaterialPageRoute
                            (
                              builder: (context) => const AccountSettings()
                            )
                          );
                        }, child: Text('G',
                              style: TextStyle(
                              fontSize: 25.0 ,
                              letterSpacing: 2,
                              color: Colors.white,
                            )
                          ),
                        )
                      ]
                    ),
                    Row(
                      children: 
                      <Widget>[
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 14.0 ,
                            fontFamily: 'Poppins Medium',
                            letterSpacing: 2,
                            color: Colors.black),
                          text: ' Hi, Guest!\n',
                          children: [
                            TextSpan(
                              style: TextStyle(fontSize: 16.0 ,color: Colors.black),
                              text: ' Find a Mall near you',
                            ),
                          ],
                        ),
                      ),
                      
                      ],
                    ),
                ]
               )
              ),
            

            // Dashboard Search
            Container
            (
              padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
              child: TextField
              (
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
                    borderRadius:
                        BorderRadius.all(Radius.circular(2.0)),
                    borderSide: const BorderSide(
                      color: Color(0xFFBC4C4C4),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.all(Radius.circular(2.0)),
                    borderSide: BorderSide(color: Color(0xFFBC4C4C4)),
                  ),
                ),
              ),
            ),

            CarouselSlider(
              items: [
                 Card
                  (
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Theme.of(context).colorScheme.outline,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(3)),
                    ),
                    child: Image.asset("assets/images/bagSale.jpg",
                      width: 500,
                      height: 100,
                      fit: BoxFit.cover
                    ),
                    
                  ),

                  Card
                  (
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Theme.of(context).colorScheme.outline,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(3)),
                    ),
                    child: Column(children: [
                      Image.asset("assets/images/backToSchool.jpeg",
                        width: 500,
                        height: 100,
                        fit: BoxFit.cover
                      ),
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
                 Text(
                    "-",
                    style: TextStyle(
                      color: Color(0xFFBAA1945)
                    )
                  ),

                 Text(
                    "-"
                  ),

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
              margin: const EdgeInsets.fromLTRB(0, 15, 15, 0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Are you here?',
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 16.0 ,
                    fontFamily: 'Poppins Medium',
                    letterSpacing: 1.5,
                    color: Colors.black
                  ),
                ),
              ),
            ),
           


            // Current Mall You're In
            Card (
              elevation: 0,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 330,
                  color: Theme.of(context).colorScheme.outline,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(3)),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      child: Image.asset("assets/images/Mall1.jpg",
                        width: 200,
                        height: 130,
                        fit: BoxFit.cover
                      ),
                  ),

                  Container(
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            child: Text('Mall 1',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontFamily: 'Poppins Regular',
                                fontSize: 13,
                                color: Color(0xFFB757575)
                              )
                            ),
                          ),
                        ),
                        
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                          child: Text('Description',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontFamily: 'Poppins Regular',
                              fontSize: 11,
                              color: Color.fromARGB(250, 128, 128, 128)
                            )
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(15, 15, 10, 2),
                          height: 30,
                          decoration: BoxDecoration(
                          color: Color(0xFFBAA1945),
                            borderRadius: BorderRadius.circular(3)
                          ),
                          child: TextButton
                          (
                            onPressed: (){
                              Navigator.push
                              (
                                context, MaterialPageRoute
                                (
                                  builder: (context) => const StartNavigating()
                                )
                              );
                            },
                            child: Text("START NAVIGATING",
                            style: TextStyle
                              (
                                color: Colors.white,
                                fontSize: 9,
                                fontFamily: 'Poppins Medium',
                                letterSpacing: 2,
                              )
                            )
                          )
                        ),

                        Container(
                          child: TextButton
                          ( 
                            onPressed: (){
                              Navigator.push
                              (
                                context, MaterialPageRoute
                                (
                                  builder: (context) => const MallInfo()
                                )
                              );
                            },
                            child: Text("CHECK MALL INFO",
                            style: TextStyle
                              (
                                color: Color(0xFFBAA1945),
                                fontSize: 9,
                                fontFamily: 'Poppins Medium',
                                letterSpacing: 2,
                              )
                            )
                          )
                        ),
                      ],
                    ),
                  ),
                  
                ]
              )
            ),

            // Malls near you
            Container(
              margin: const EdgeInsets.fromLTRB(0, 15, 15, 0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Malls near you',
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 16.0 ,
                    fontFamily: 'Poppins Medium',
                    letterSpacing: 1.5,
                    color: Colors.black
                  ),
                ),
              ),
            ),


            Container(
              child: Row(
                children: <Widget>[
                  Card
                  (
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Theme.of(context).colorScheme.outline,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(3)),
                    ),
                    child: Column(children: [
                      Image.asset("assets/images/mallnearyou1.jpeg",
                        width: 175,
                        height: 100,
                        fit: BoxFit.cover
                      ),
                    ]),
                  ),

                  Card
                  (
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Theme.of(context).colorScheme.outline,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(3)),
                    ),
                    child: Column(children: [
                      Image.asset("assets/images/mallnearyou2.jpeg",
                        width: 175,
                        height: 100,
                        fit: BoxFit.cover
                      ),
                    ]),
                  ),

                ],
              )
            ),

          ]
        )
      )
    );
  }
}