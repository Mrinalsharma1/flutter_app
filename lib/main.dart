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
          leading: Icon(
            Icons.home,
            size: 30,
            color: Colors.blueAccent,
          ),
          title: Text(
            '11 days Card',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.amber,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Container(
              height: 200,
              width: 250,
              // padding: EdgeInsets.all(10),
              child: Card(
                color: Colors.amberAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                elevation: 20,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: Icon(
                          Icons.person,
                          size: 40,
                          color: Colors.black87,
                        ),
                        title: Text(
                          'Mrinal Shamra',
                          style:
                              TextStyle(fontSize: 20, color: Colors.blueAccent),
                        ),
                        subtitle: Text(
                          'Name',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    ButtonBar(
                      children: [
                        // ignore: deprecated_member_use
                        RaisedButton(
                          child: FloatingActionButton.extended(
                            onPressed: () {},
                            label: Text('Contact'),
                            icon: Icon(Icons.call),
                          ),
                          // color: Colors.redAccent,
                          onPressed: () {},
                        ),
                        RaisedButton(
                          child: Text('Submit'),
                          color: Colors.lightBlue,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
