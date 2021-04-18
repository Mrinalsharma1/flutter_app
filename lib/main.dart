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
      title: "Tab Bar",
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("TabBar"),
            backgroundColor: Colors.black,
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: "Home",
                ),
                Tab(
                  icon: Icon(Icons.settings),
                  text: "Setting",
                ),
                Tab(
                  icon: Icon(Icons.local_grocery_store),
                  text: "Store",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              HomePage(),
              Setting(),
              Store(),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        "HomePage",
        style: TextStyle(fontSize: 18),
      )),
    );
  }
}

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        "SettingPage",
        style: TextStyle(fontSize: 18),
      )),
    );
  }
}

class Store extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        "StorePage",
        style: TextStyle(fontSize: 18),
      )),
    );
  }
}
