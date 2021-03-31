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
          body: Container(
            height: 100,
            width: 100,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Text("hey Codder !!"),
            decoration: BoxDecoration(
                border: Border.all(width: 4, color: Colors.black),
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.orangeAccent,
                    offset: Offset(6.0, 6.0),
                  )
                ]),
            transform: Matrix4.rotationZ(0.1),
          )),
    );
  }
}
