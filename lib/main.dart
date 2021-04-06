import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'my android',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello '),
          leading: Icon(Icons.home),
        ),
        body: Center(
          child: Stack(
            fit: StackFit.passthrough,
            overflow: Overflow.visible,
            children: [
              Container(
                height: 300,
                width: 400,
                color: Colors.green,
                child: Center(
                  child: Text(
                    "hello !!!",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 20,
                right: 30,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.orange,
                  child: Center(
                    child: Text(
                      "coders.",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 20,
                left: 20,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.lightBlue,
                  child: Center(
                    child: Text(
                      "coders.",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 20,
                bottom: 20,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.orange,
                  child: Center(
                    child: Text(
                      "coders.",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                right: 20,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.lightBlueAccent,
                  child: Center(
                    child: Text(
                      "coders.",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 400,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    "hello !!!",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
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
