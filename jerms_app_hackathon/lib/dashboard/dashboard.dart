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
        iconTheme: IconThemeData(
          color: Color(0xFFBAA1945), //change your color here
        ),
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
        padding: EdgeInsets.fromLTRB(30, 30, 30, max(58, 58)),
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
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
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
                    child: Image.asset("assets/images/backToSchool.jpeg",
                      width: 600,
                      height: 100,
                      fit: BoxFit.cover
                    ),
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

            //Are you here?
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Are you here?',
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 15.0 ,
                  fontFamily: 'Poppins Medium',
                  letterSpacing: 2,
                  color: Colors.black
                ),
              ),
            ),
            

            Container
            (
              margin: EdgeInsets.symmetric(vertical: 7.0),
              height: 100.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Card
                  (
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Theme.of(context).colorScheme.outline,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Image.asset("assets/images/bagSale.jpg", width: 165, height: 180,),
                  ),
                    
                  Card
                  (
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Theme.of(context).colorScheme.outline,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                    ),
                    child: const SizedBox(
                      width: 165,
                      height: 180,
                      child: Center(
                        child: Text("Start Navigating \n\n" + "Show Mall Info",
                          style: TextStyle(
                            fontSize: 13.0 ,
                            fontFamily: 'Poppins Medium',
                            letterSpacing: 2,
                            color: Color(0xFFBAA1945),
                          ),
                        )
                      ),
                    ),
                  ),
                ],
              )
            ),
              
              // Start Navigating
              ElevatedButton
              (
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context) => const StartNavigating()
                    )
                  );
                }, child: const Text('Start Navigating'),
              ),  

              // Check Mall Info
              ElevatedButton
              (
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context) => const MallInfo()
                    )
                  );
                }, child: const Text('Check Mall Info'),
              ),  

              // View Map
              ElevatedButton
              (
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context) => const SetLocation()
                    )
                  );
                }, child:  const Text('Update Set Location'),
              )
          ]
        )
      ),
    );
  }
}