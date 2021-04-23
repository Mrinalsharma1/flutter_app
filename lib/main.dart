import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Newcard.dart';

void main() {
  // runApp(MyApp(names: List<String>.generate(50, (a) => "coder!! $a")));
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
          title: Text("Long list"),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(datas.length, (index) {
            return Center(
              child: Newcard(
                datas: datas[index],
              ),
            );
          }),
        ),
      ),
    );
  }
}

class data {
  const data({this.title, this.icon});
  final String title;
  final IconData icon;
}

const List<data> datas = const <data>[
  const data(title: 'Home', icon: Icons.home),
  const data(title: 'Home', icon: Icons.add_box),
  const data(title: 'Home', icon: Icons.home),
  const data(title: 'Setting', icon: Icons.settings),
  const data(title: 'Home', icon: Icons.home),
  const data(title: 'Home', icon: Icons.home),
];
