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
          backgroundColor: Colors.amberAccent,
          appBar: AppBar(
            title: Text("Day 4"),
            leading: Icon(Icons.home),
            backgroundColor: Colors.redAccent,
          ),
          body: Column(
            children: [
              Text(
                "hello coder !! this is my name is mrinal sharma what about you",
                style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w700,
                    backgroundColor: Colors.blueAccent,
                    letterSpacing: 2.0,
                    wordSpacing: 15.0,
                    shadows: [
                      Shadow(
                        color: Colors.lightBlueAccent,
                        offset: Offset(3.0, 2.0),
                      ),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                      text: "Hello!!",
                      style: TextStyle(
                        color: Colors.greenAccent,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'coder',
                          style: TextStyle(
                            color: Colors.redAccent,
                          ),
                        ),
                      ]),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      // obscureText: true,//hide your input text as like password
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Name :',
                        hintText: 'Enter Your Name',
                      ),
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
