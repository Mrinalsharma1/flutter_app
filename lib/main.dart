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
      title: '12 days',
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.home,
            size: 30,
            color: Colors.blueAccent,
          ),
          title: Text(
            '12 days Card',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Center(
                              child: Container(
                                height: 180,
                                width: 340,
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
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.blueAccent),
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
                                            child:
                                                FloatingActionButton.extended(
                                              onPressed: () {},
                                              label: Text('Contact'),
                                              icon: Icon(Icons.call),
                                            ),
                                            color: Colors.amberAccent,
                                            onPressed: () {},
                                          ),
                                          RaisedButton(
                                            child:
                                                FloatingActionButton.extended(
                                              onPressed: () {},
                                              label: Text('Message'),
                                              icon: Icon(Icons.message),
                                            ),
                                            color: Colors.amberAccent,
                                            onPressed: () {},
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Center(
                              child: Container(
                                height: 180,
                                width: 340,
                                // padding: EdgeInsets.all(10),
                                child: Card(
                                  color: Colors.greenAccent,
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
                                            'Sagar Shamra',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.blueAccent),
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
                                            child:
                                                FloatingActionButton.extended(
                                              onPressed: () {},
                                              label: Text('Send'),
                                              icon: Icon(Icons.send),
                                            ),
                                            color: Colors.greenAccent,
                                            onPressed: () {},
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          RaisedButton(
                                            child:
                                                FloatingActionButton.extended(
                                              onPressed: () {},
                                              label: Text('Receive'),
                                              icon: Icon(Icons.read_more),
                                            ),
                                            color: Colors.greenAccent,
                                            onPressed: () {},
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                // third section
                Row(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Center(
                              child: Container(
                                height: 180,
                                width: 340,
                                // padding: EdgeInsets.all(10),
                                child: Card(
                                  color: Colors.deepPurpleAccent,
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
                                            'Vikash Viraj',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.blueAccent),
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
                                            child:
                                                FloatingActionButton.extended(
                                              onPressed: () {},
                                              label: Text('Donate'),
                                              icon: Icon(Icons.donut_large),
                                            ),
                                            color: Colors.deepPurpleAccent,
                                            onPressed: () {},
                                          ),
                                          RaisedButton(
                                            child:
                                                FloatingActionButton.extended(
                                              onPressed: () {},
                                              label: Text('Account'),
                                              icon: Icon(Icons.account_balance),
                                            ),
                                            color: Colors.deepPurpleAccent,
                                            onPressed: () {},
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),

                //here is icon menu section start
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.search,
                              color: Colors.pinkAccent,
                              size: 40,
                              textDirection: TextDirection.rtl,
                            ),
                            Text('Search'),
                          ],
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.update,
                              color: Colors.pinkAccent,
                              size: 40,
                              textDirection: TextDirection.rtl,
                            ),
                            Text('Update'),
                          ],
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.image,
                              color: Colors.pinkAccent,
                              size: 40,
                              textDirection: TextDirection.rtl,
                            ),
                            Text('Gallery'),
                          ],
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.person,
                              color: Colors.pinkAccent,
                              size: 40,
                              textDirection: TextDirection.rtl,
                            ),
                            Text('About'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
