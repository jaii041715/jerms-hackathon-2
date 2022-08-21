import 'package:flutter/material.dart';
import 'package:jerms_app_hackathon/dashboard/dashboard.dart';
import 'package:jerms_app_hackathon/notes/notesListItem/notesListItem.dart';

void main() {
  runApp(const Social());
}

class Social extends StatelessWidget {
  const Social({super.key});

  @override
  Widget build(BuildContext context) {
    Color _color = const Color(0xFFBFFF7EB);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: _color,
          title: const Text(
            'Social',
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
            child: SingleChildScrollView(     
              child: Column(children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(children: <Widget>[
                    Row(children: <Widget>[
                      FloatingActionButton(
                        backgroundColor: Color(0xFFBAA1945),
                        onPressed: () {
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
                        Card(
                          margin: const EdgeInsets.fromLTRB(5, 10, 0, 10),
                          child: InkWell(
                            splashColor: Colors.blue.withAlpha(30),
                            onTap: () {
                              debugPrint('What`s on your mind?');
                            },
                            child: const SizedBox(
                              width: 320,
                              height: 70,
                              child: Text('What`s on your mind?', textAlign: TextAlign.center),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ])),
                Card(
                    child: Container(
                      child: Image.asset("assets/images/social6.jpeg",
                          width: 358, height: 170, fit: BoxFit.cover),
                    ),
                ),
                Card(
                  child: Row(children: <Widget>[
                    Container(
                      margin: const EdgeInsets.fromLTRB(45, 0, 15, 0),
                      child: Row(children: <Widget>[
                        Icon(
                          Icons.favorite_border,
                          color: Color(0xFFBAA1945), 
                          size: 25.0
                        ),
                        Text("1.9k",
                        style: TextStyle(
                              fontFamily: 'Poppins Bold',
                              fontSize: 13.0,
                              color: Color.fromARGB(250, 66, 66, 66),
                        ))
                      ],)
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(100, 0, 15, 0),
                      child: Row(children: <Widget>[
                        Icon(
                          Icons.comment_bank,
                          color: Color.fromRGBO(58, 128, 242, 0.984), 
                          size: 25.0
                        ),
                        Text("3.7k",
                        style: TextStyle(
                              fontFamily: 'Poppins Bold',
                              fontSize: 13.0,
                              color: Color.fromARGB(250, 66, 66, 66),
                        ))
                      ],)
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(30, 0, 15, 0),
                      child: Row(children: <Widget>[
                        Icon(
                          Icons.share,
                          color: Color.fromARGB(249, 239, 146, 32), 
                          size: 25.0
                        ),
                        Text("4.6k",
                        style: TextStyle(
                              fontFamily: 'Poppins Bold',
                              fontSize: 13.0,
                              color: Color.fromARGB(250, 66, 66, 66),
                        ))
                      ],)
                    ),

                    // Post2
                    
                  ]
                )
              ),
              
              // Post2
                Card(
                    child: Container(
                      child: Image.asset("assets/images/social4.jpeg",
                          width: 358, height: 170, fit: BoxFit.cover),
                    ),
                ),
                Card(
                  child: Row(children: <Widget>[
                    Container(
                      margin: const EdgeInsets.fromLTRB(45, 0, 15, 0),
                      child: Row(children: <Widget>[
                        Icon(
                          Icons.favorite_border,
                          color: Color(0xFFBAA1945), 
                          size: 25.0
                        ),
                        Text("3.5k",
                        style: TextStyle(
                              fontFamily: 'Poppins Bold',
                              fontSize: 13.0,
                              color: Color.fromARGB(250, 66, 66, 66),
                        ))
                      ],)
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(100, 0, 15, 0),
                      child: Row(children: <Widget>[
                        Icon(
                          Icons.comment_bank,
                          color: Color.fromRGBO(58, 128, 242, 0.984), 
                          size: 25.0
                        ),
                        Text("3.6k",
                        style: TextStyle(
                              fontFamily: 'Poppins Bold',
                              fontSize: 13.0,
                              color: Color.fromARGB(250, 66, 66, 66),
                        ))
                      ],)
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(30, 0, 15, 0),
                      child: Row(children: <Widget>[
                        Icon(
                          Icons.share,
                          color: Color.fromARGB(249, 239, 146, 32), 
                          size: 25.0
                        ),
                        Text("4.7k",
                        style: TextStyle(
                              fontFamily: 'Poppins Bold',
                              fontSize: 13.0,
                              color: Color.fromARGB(250, 66, 66, 66),
                        ))
                      ],)
                    ),

                    // Post2
                    
                  ]
                )
              ),

              //Post 3

              // Post2
                Card(
                    child: Container(
                      child: Image.asset("assets/images/social5.jpeg",
                          width: 358, height: 170, fit: BoxFit.cover),
                    ),
                ),
                Card(
                  child: Row(children: <Widget>[
                    Container(
                      margin: const EdgeInsets.fromLTRB(45, 0, 15, 0),
                      child: Row(children: <Widget>[
                        Icon(
                          Icons.favorite_border,
                          color: Color(0xFFBAA1945), 
                          size: 25.0
                        ),
                        Text("961",
                        style: TextStyle(
                              fontFamily: 'Poppins Bold',
                              fontSize: 13.0,
                              color: Color.fromARGB(250, 66, 66, 66),
                        ))
                      ],)
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(100, 0, 15, 0),
                      child: Row(children: <Widget>[
                        Icon(
                          Icons.comment_bank,
                          color: Color.fromRGBO(58, 128, 242, 0.984), 
                          size: 25.0
                        ),
                        Text("2.3k",
                        style: TextStyle(
                              fontFamily: 'Poppins Bold',
                              fontSize: 13.0,
                              color: Color.fromARGB(250, 66, 66, 66),
                        ))
                      ],)
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(30, 0, 15, 0),
                      child: Row(children: <Widget>[
                        Icon(
                          Icons.share,
                          color: Color.fromARGB(249, 239, 146, 32), 
                          size: 25.0
                        ),
                        Text("4.5k",
                        style: TextStyle(
                              fontFamily: 'Poppins Bold',
                              fontSize: 13.0,
                              color: Color.fromARGB(250, 66, 66, 66),
                        ))
                      ],)
                    ),

                    // Post2
                    
                  ]
                )
              )
          ]
        )
      )
    )
    );
  }
}
