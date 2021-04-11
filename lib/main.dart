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
      title: 'Flutter With Mrinal',
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.home),
          title: Text('Icon & Images'),
          backgroundColor: Colors.lightGreen,
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

                // our image section with grid

                Row(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              "image/1.jpg",
                              height: 100,
                              width: 150,
                            ),
                            Text("My First Image"),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              "image/1.jpg",
                              height: 100,
                              width: 150,
                            ),
                            Text("My Second Image"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),

                // this is  also a another container of image where we are fetch image from image link to google
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Image.network(
                              "https://images.pexels.com/photos/36762/scarlet-honeyeater-bird-red-feathers.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                              height: 100,
                              width: 150,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("This is network image"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Image.network(
                              "https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                              height: 100,
                              width: 150,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Image From Google"),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),

                // here we are show fade image property in there if we are not connect to network then placeholder image are shown insted of
                // our actual image.

                Row(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            FadeInImage.assetNetwork(
                              placeholder: 'image/1.jpg',
                              image:
                                  "https://images.pexels.com/photos/753626/pexels-photo-753626.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
                              height: 100,
                              width: 150,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Placeholder Image"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            FadeInImage.assetNetwork(
                              placeholder: 'image/1.jpg',
                              image:
                                  "https://images.pexels.com/photos/753626/pexels-photo-753626.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
                              height: 100,
                              width: 150,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Placeholder Image"),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),

                //this is last section of icons widgt
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
