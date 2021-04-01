import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App 1",
      home: Scaffold(
        backgroundColor: Colors.yellowAccent,
        appBar: AppBar(
          title: Text("Container Widget"),
          leading: Icon(Icons.home),
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          //you can also write Column for column container
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              height: 100,
              width: 100,
              color: Colors.amberAccent,
              margin: EdgeInsets.all(10),
              child: Text("hey coder"),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.amberAccent,
              margin: EdgeInsets.all(10),
              child: Text("second wigits"),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.amberAccent,
              margin: EdgeInsets.all(10),
              child: Text("hey coder"),
            ),
          ],
        ),
      ),
    );
  }
}
