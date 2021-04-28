import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("snack bar"),
        ),
        // body: linear_progress_bar(), this is first type of progress bar
        // body: circular_progress_bar(), this is second type of progress bar
        body: snack_bar(),
      ),
    );
  }
}

class linear_progress_bar extends StatefulWidget {
  @override
  _linear_progress_barState createState() => _linear_progress_barState();
}

class _linear_progress_barState extends State<linear_progress_bar> {
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.all(10.0),
              child: loading
                  ? LinearProgressIndicator()
                  : Text("Please check to download"),
            ),
          ),
          RaisedButton(
            child: Text("Download"),
            color: Colors.amberAccent,
            onPressed: () {
              setState(() {
                loading = !loading;
              });
            },
          ),
        ],
      ),
    );
  }
}

class circular_progress_bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: CircularProgressIndicator(
          strokeWidth: 2,
        ),
      ),
    );
  }
}

class snack_bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: RaisedButton(
          child: Text("Snack bar"),
          color: Colors.amber,
          onPressed: () {
            final msg = SnackBar(
              content: Text("This is Notification"),
              duration: Duration(seconds: 10),
            );
            Scaffold.of(context).showSnackBar(msg);
          },
        ),
      ),
    );
  }
}
