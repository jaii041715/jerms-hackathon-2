import 'package:flutter/material.dart';
import 'package:jerms_app_hackathon/dashboard/dashboard.dart';
import 'package:jerms_app_hackathon/dashboard/dashboard.dart';
import 'package:jerms_app_hackathon/main.dart';

void main() {
  runApp(const SetLocation());
}

class SetLocation extends StatelessWidget {
  const SetLocation({super.key});

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
          'Set Location',
          style: TextStyle(
              color: Color(0xFFB322E2E),
              fontFamily: 'Poppins Semi Bold',
              fontSize: 16),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
                child: Container(
                    padding: EdgeInsets.fromLTRB(30, 30, 30, 60),
                    width: double.infinity,
                    decoration: BoxDecoration(color: Color(0xFFBFFF7EB)),
                    child: Container(
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
                          hintText: "Search here..",
                          hintStyle: TextStyle(
                              fontFamily: 'Poppins-Regular',
                              fontSize: 14,
                              color: Color(0xFFB707070)),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: const BorderSide(
                              color: Color(0xFFBC4C4C4),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: Color(0xFFBC4C4C4)),
                          ),
                        ),
                      ),
                    ))),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Dashboard()));
        },
        backgroundColor: Colors.green,
        child: Text("NEXT"),
      ),
    );
  }
}
