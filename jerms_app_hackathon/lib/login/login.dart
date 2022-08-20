import 'package:flutter/material.dart';
import 'package:jerms_app_hackathon/main.dart';
import 'package:jerms_app_hackathon/setLocation/setLocation.dart';


void main() {
  runApp(const Login());
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Color _color = const Color(0xFFBFFF7EB);
    String _fontFamilyMedium = 'Poppins Medium';
    return Scaffold(
        backgroundColor: _color,
        body: Container(
          child: Column(children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 130),
              alignment: Alignment.topCenter,
              child: Image.asset(
                "assets/images/iWander - Official Logo.png",
                height: 50,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 100),
              child: Text(
                "Sign In",
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Poppins Bold',
                    color: Color(0xFFB33140C)),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(40, 15, 40, 10),
              child: Text(
                "A revolutionized indoor navigation",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins Regular',
                    color: Color(0xFFB33140C)),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
                child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SetLocation()));
                // Navigate back to first route when tapped.
               },
              child: Container(
                margin: EdgeInsets.fromLTRB(32, 0, 32, 5),
                padding: EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFFBAA1945),
                    ),
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Text("SIGN IN AS GUEST", 
                      style: TextStyle(
                          color: Color(0xFFBAA1945),
                          fontSize: 14,
                          fontFamily: _fontFamilyMedium,
                          letterSpacing: 1.25)),
                ),
              ),
            )),
            Container(
                child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SetLocation()));
                // Navigate back to first route when tapped.
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(32, 0, 32, 20),
                padding: EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xFFBAA1945),
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Text("SIGN IN WITH EMAIL",
                      style: TextStyle(
                          color: Color(0xFFBFFFFFF),
                          fontSize: 14,
                          fontFamily: _fontFamilyMedium,
                          letterSpacing: 1.25)),
                ),
              ),
            )),
            Row(children: <Widget>[
              Expanded(
                  child: Container(
                margin: const EdgeInsets.only(left: 40.0, right: 10.0),
                child: Divider(
                  thickness: 2,
                  color: Color(0xFFBC4C4C4),
                ),
              )),
              Text(
                "OR",
                style: TextStyle(
                    color: Color(0xFFBAA1945),
                    fontSize: 16,
                    fontFamily: _fontFamilyMedium,
                    letterSpacing: 1.25),
              ),
              Expanded(
                  child: Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 40.0),
                      child: Divider(
                        thickness: 2,
                        color: Color(0xFFBC4C4C4),
                      ))),
            ]),
            Container(
                child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Login()));
                // Navigate back to first route when tapped.
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(32, 20, 32, 5),
                padding: EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xFFB3A5998),
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Text("SIGN IN WITH FACEBOOK",
                      style: TextStyle(
                          color: Color(0xFFBFFFFFF),
                          fontSize: 14,
                          fontFamily: _fontFamilyMedium,
                          letterSpacing: 1.25)),
                ),
              ),
            )),
            Container(
                child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Login()));
                // Navigate back to first route when tapped.
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(32, 0, 32, 10),
                padding: EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xFFBFFFFFF),
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Text("SIGN IN WITH GOOGLE",
                      style: TextStyle(
                          color: Color(0xFFB696969),
                          fontSize: 14,
                          fontFamily: _fontFamilyMedium,
                          letterSpacing: 1.25)),
                ),
              ),
            )),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Text(
                "Don't have an account yet?",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins Regular',
                    color: Color(0xFFB33140C)),
                textAlign: TextAlign.center,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Login()));
                  // Navigate back to first route when tapped.
                },
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Color(0xFFBB2002D),
                      fontSize: 14,
                      fontFamily: _fontFamilyMedium,
                      letterSpacing: 1.25),
                ),
              ),
            ]),
          ]),
        ));
  }
}
