import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "17 DaysBasic List",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Basic List"),
        ),
        body: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              // trailing: Icon(Icons.home),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting"),
            ),
            ListTile(
              leading: Icon(Icons.call),
              title: Text("Call"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Person"),
            )
          ],
        ),
      ),
    );
  }
}
