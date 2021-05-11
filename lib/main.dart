import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => First_Screen(),
        '/second': (context) => Second_Screen(),
        '/third': (context) => Third_Screen(),
      },
    );
  }
}

class First_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Split screen"),
      ),
      body: Center(
        child: Container(
          child: RaisedButton(
            child: Text("text Me"),
            color: Colors.amber,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Second_Screen()));
            },
          ),
        ),
      ),
    );
  }
}

class Second_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second screen"),
      ),
      body: Center(
        child: Container(
          child: RaisedButton(
            child: Text("go to third page"),
            color: Colors.amber,
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Third_Screen()));
            },
          ),
        ),
      ),
    );
  }
}

class Third_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third screen"),
      ),
      body: Center(
        child: Container(
          child: RaisedButton(
            child: Text("Back to sec page"),
            color: Colors.green,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}
