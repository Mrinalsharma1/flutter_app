import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Newcard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // final List<String> names;
  // MyApp({key, this.names}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: "17 Days Basic List",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Horizontal list"),
        ),
        body: Container(
          height: 150.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                width: 150.0,
                color: Colors.red,
                child: Center(
                  child: ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                  ),
                ),
              ),
              Container(
                width: 150.0,
                color: Colors.blue,
                child: Center(
                  child: ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                  ),
                ),
              ),
              Container(
                width: 150.0,
                color: Colors.green,
                child: Center(
                  child: ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
