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
          title: Center(child: Text("Day 1")),
          leading: Icon(Icons.home),
          backgroundColor: Colors.redAccent,
        ),
        body: Center(child: Text("hello World")),
      ),
    );
  }
}
