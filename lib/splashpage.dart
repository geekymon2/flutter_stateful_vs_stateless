import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 10.0),
          padding: EdgeInsets.all(5.0),
          child: CircleAvatar(
              backgroundColor: Colors.amber,
              radius: 300.0,
              child: Text("Splash",
                  style:
                      TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold))),
        ),
      ],
    )));
  }
}
