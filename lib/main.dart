import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'my App',
      home: Scaffold(
          backgroundColor: Colors.grey,
          appBar: AppBar(
            title: Text('Welcome to Flutter'),
            leading: Icon(Icons.home),
            backgroundColor: Colors.redAccent,
          ),
          body: Center(
            child: Column(
              children: [
                Center(
                  child: Container(
                    height: 100,
                    width: 100,
                    margin: EdgeInsets.only(top: 40),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.lightBlueAccent,
                        border: Border.all(color: Colors.white, width: 2)),
                    child: Center(
                        child: Text(
                      'M',
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    )),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(30),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Mrinal Sharma',
                        icon: Icon(Icons.person, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                        icon: Icon(Icons.lock, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, top: 25, right: 30),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Github Link',
                        icon: Icon(Icons.link, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                //flat button
                FlatButton(
                  child: Text(
                    'Update',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.italic),
                  ),
                  onPressed: () {},
                  color: Colors.lightBlueAccent,
                  textColor: Colors.white,
                ),
                //raise button
                RaisedButton(
                  child: Text('Updated'),
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.black,
                  splashColor: Colors.lightGreenAccent,
                ),
                //floating action button
                FloatingActionButton(
                  child: Icon(Icons.save),
                  // Text('Submit'),
                  onPressed: () {},
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.yellow,
                ),
                FloatingActionButton.extended(
                  onPressed: () {},
                  label: Text('Save'),
                  icon: Icon(Icons.save),
                ),
              ],
            ),
          )),
    );
  }
}
