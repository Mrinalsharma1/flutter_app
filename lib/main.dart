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
      title: '11 days',
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.home),
          title: Text('Form'),
          backgroundColor: Colors.amberAccent,
        ),
        // backgroundColor: Colors.lightBlue,
        body: Forms(),
      ),
    );
  }
}

class Forms extends StatefulWidget {
  @override
  _FormsState createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  final Keys = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: Keys,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            decoration: InputDecoration(
              hintText: "Enter your name",
              labelText: "Name",
              icon: Icon(Icons.person),
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please Fill the Details';
              }
              return null;
            },
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Enter your Password",
              labelText: "Password",
              icon: Icon(Icons.lock),
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please Fill the Details';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Enter your Link",
              labelText: "Github Link",
              icon: Icon(Icons.link),
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please Fill the Details';
              }
              return null;
            },
          ),
          Container(
            child: ElevatedButton(
              child: Text('submit'),
              onPressed: () {
                if (Keys.currentState.validate()) {
                  Scaffold.of(context).showBottomSheet(
                    (context) => Text("validate is going on"),
                  );
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
