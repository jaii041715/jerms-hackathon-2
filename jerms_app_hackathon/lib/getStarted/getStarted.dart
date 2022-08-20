import 'package:flutter/material.dart';
import 'package:jerms_app_hackathon/main.dart';
import 'package:jerms_app_hackathon/login/login.dart';

void main() {
  runApp(const getStarted());
}

class getStarted extends StatelessWidget {
  const getStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/getStartedPage.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 250),
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    "assets/images/iWander - Official Logo.png",
                    height: 50,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 200),
                  child: Text(
                    "Get Your Directions Right.",
                    style: TextStyle(
                        fontSize: 26,
                        fontFamily: 'Poppins Bold',
                        color: Color(0xFFB33140C)),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(40, 0, 40, 10),
                  child: Text(
                    "Let us show you the best and shortest possible route to any store inside this mall.",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Poppins Regular',
                        color: Color(0xFFB33140C)),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                    child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Login()));
                      // Navigate back to first route when tapped.
                    },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(32, 0, 32, 50),
                    padding: EdgeInsets.all(15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xFFBAA1945),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text("GET STARTED",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Poppins Medium',
                              letterSpacing: 2)),
                    ),
                  ),
                ))
              ])),
    );
  }
}
