import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_app/Newcard.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // final List<String> names;
  // MyApp({key, this.names}) : super(key: key);

  // List<String> images = [
  //   "https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  //   "https://images.pexels.com/photos/145939/pexels-photo-145939.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  //   "https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  //   "https://images.pexels.com/photos/145939/pexels-photo-145939.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  // ];
  @override
  void showtost() {
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.blue,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      // title: "17 Days Basic List",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Long list"),
        ),

        body: Center(
          child: Container(
            child: RaisedButton(
              child: Text("This is toast"),
              onPressed: () {
                showtost();
              },
              color: Colors.blueAccent,
            ),
          ),
        ),

        // body: GridView.extent(
        //   maxCrossAxisExtent: 250,
        //   primary: false,
        //   padding: EdgeInsets.all(10.0),
        //   crossAxisSpacing: 8.0,
        //   children: [
        //     Container(
        //       child: Image.network(
        //         "https://images.pexels.com/photos/145939/pexels-photo-145939.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        //         height: 200,
        //         width: 200,
        //       ),
        //     ),
        //     Container(
        //       child: Image.network(
        //         "https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        //         height: 200,
        //         width: 200,
        //       ),
        //     ),
        //     Container(
        //       child: Image.network(
        //         "https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        //         height: 200,
        //         width: 200,
        //       ),
        //     ),
        //     Container(
        //       child: Image.network(
        //         "https://images.pexels.com/photos/145939/pexels-photo-145939.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        //         height: 200,
        //         width: 200,
        //       ),
        //     ),
        //   ],
        // )

        // this is first property

        // body: GridView.builder(
        //   itemCount: images.length,
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 2,
        //     crossAxisSpacing: 7,
        //   ),
        //   itemBuilder: (BuildContext context, int index) {
        //     return Container(child: Image.network(images[index]));
        //   },
        // ),

        // this is first property

        // body: GridView.count(
        //   crossAxisCount: 2,
        //   mainAxisSpacing: 6.0,
        //   crossAxisSpacing: 5.0,
        //   children: List.generate(datas.length, (index) {
        //     return Center(
        //       child: Newcard(
        //         datas: datas[index],
        //       ),
        //     );
        //   }),
        // ),
      ),
    );
  }
}

class data {
  const data({this.title, this.icon});
  final String title;
  final IconData icon;
}

const List<data> datas = const <data>[
  const data(title: 'Home', icon: Icons.home),
  const data(title: 'Home', icon: Icons.add_box),
  const data(title: 'Home', icon: Icons.home),
  const data(title: 'Setting', icon: Icons.settings),
  const data(title: 'Home', icon: Icons.home),
  const data(title: 'Home', icon: Icons.home),
  const data(title: 'Setting', icon: Icons.settings),
  const data(title: 'Home', icon: Icons.home),
  const data(title: 'Home', icon: Icons.home),
];
