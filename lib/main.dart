import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Switch_wigit(),
      home: table_wigit(),
    );
  }
}

class Switch_wigit extends StatefulWidget {
  @override
  _Switch_wigitState createState() => _Switch_wigitState();
}

class _Switch_wigitState extends State<Switch_wigit> {
  bool switch_state = false;
  var textValue = "switch is on";
  void display_state(bool value) {
    if (switch_state == false) {
      setState(() {
        switch_state = true;
        textValue = "switch is on";
      });
    } else {
      setState(() {
        switch_state = false;
        textValue = "switch is off";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("switch"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: Transform.scale(
                scale: 2,
                child: Switch(
                  value: switch_state,
                  onChanged: display_state,
                  activeColor: Colors.green,
                  inactiveTrackColor: Colors.red,
                  inactiveThumbColor: Colors.redAccent,
                ),
              ),
            ),
            Text('$textValue')
          ],
        ));
  }
}

class table_wigit extends StatefulWidget {
  @override
  _table_wigitState createState() => _table_wigitState();
}

class _table_wigitState extends State<table_wigit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Table_wigit"),
      ),
      body: Container(
        padding: EdgeInsets.all(5),
        child: Table(
          defaultColumnWidth: FixedColumnWidth(140),
          border: TableBorder.all(
            color: Colors.red,
          ),
          children: [
            TableRow(children: [
              Column(
                children: [
                  Text(
                    "Name",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Name",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Name",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ]),
            TableRow(children: [
              Column(
                children: [
                  Text("Class"),
                ],
              ),
              Column(
                children: [
                  Text("Name"),
                ],
              ),
              Column(
                children: [
                  Text("Name"),
                ],
              ),
            ]),
            TableRow(children: [
              Column(
                children: [
                  Text("Subject"),
                ],
              ),
              Column(
                children: [
                  Text("Name"),
                ],
              ),
              Column(
                children: [
                  Text("Name"),
                ],
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
