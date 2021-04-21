import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(names: List<String>.generate(50, (a) => "coder!! $a")));
}

class MyApp extends StatelessWidget {
  final List<String> names;
  MyApp({key, this.names}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: "17 Days Basic List",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Long list"),
        ),
        body: ListView.builder(
            itemCount: names.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("Hii ${names[index]}"),
              );
            }),
      ),
    );
  }
}
