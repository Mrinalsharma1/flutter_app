import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '8 days of flutter',
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.home),
          title: Text('8 days'),
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.home,
                              color: Colors.black,
                              size: 40,
                              textDirection: TextDirection.rtl,
                            ),
                            Text('Home'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.access_alarm,
                          color: Colors.blueAccent,
                          size: 40,
                          textDirection: TextDirection.ltr,
                        ),
                        Text('Alarm'),
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.edit_road,
                          color: Colors.redAccent,
                          size: 40,
                          textDirection: TextDirection.ltr,
                        ),
                        Text('Road'),
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.mail,
                          color: Colors.blueGrey,
                          size: 40,
                          textDirection: TextDirection.ltr,
                        ),
                        Text('Road'),
                      ],
                    ),
                  ],
                ),

                //this is second section
                SizedBox(
                  height: 20,
                ),
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
                              color: Colors.blueAccent,
                              size: 40,
                              textDirection: TextDirection.rtl,
                            ),
                            Text('Search'),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.info,
                          color: Colors.black,
                          size: 40,
                          textDirection: TextDirection.ltr,
                        ),
                        Text('Info'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.image,
                          color: Colors.redAccent,
                          size: 40,
                          textDirection: TextDirection.ltr,
                        ),
                        Text('Image'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.folder,
                          color: Colors.blueGrey,
                          size: 40,
                          textDirection: TextDirection.ltr,
                        ),
                        Text('Folder'),
                      ],
                    ),
                  ],
                ),

                // this is third grid
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.cancel,
                              color: Colors.redAccent,
                              size: 40,
                              textDirection: TextDirection.rtl,
                            ),
                            Text('Cancle'),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.delete,
                          color: Colors.orangeAccent,
                          size: 40,
                          textDirection: TextDirection.ltr,
                        ),
                        Text('Info'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.file_copy,
                          color: Colors.black,
                          size: 40,
                          textDirection: TextDirection.ltr,
                        ),
                        Text('Image'),
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
