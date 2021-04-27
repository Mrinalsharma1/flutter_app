import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

enum Gender { male, female, transgender }

class _MyAppState extends State<MyApp> {
  bool firstbox = false;
  bool secondbox = false;
  bool thirdbox = false;
  Gender gender = Gender.male;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Radio Button"),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text("Hobby :"),
                ],
              ),
              Row(
                children: [
                  Text("Painting"),
                  Checkbox(
                      activeColor: Colors.redAccent,
                      checkColor: Colors.amber,
                      value: this.firstbox,
                      onChanged: (bool value) {
                        setState(() {
                          this.firstbox = value;
                        });
                      }),
                ],
              ),
              Row(
                children: [
                  Text("Singing"),
                  Checkbox(
                      value: this.secondbox,
                      onChanged: (bool value) {
                        setState(() {
                          this.secondbox = value;
                        });
                      }),
                ],
              ),
              CheckboxListTile(
                  title: Text("hey whats' up"),
                  subtitle: Text("good to see u!!"),
                  secondary: Icon(Icons.nat),
                  value: this.thirdbox,
                  onChanged: (bool value) {
                    setState(() {
                      this.thirdbox = value;
                    });
                  }),
              ListTile(
                leading: Radio(
                    value: Gender.male,
                    groupValue: gender,
                    onChanged: (Gender value) {
                      setState(() {
                        this.gender = value;
                      });
                    }),
                title: Text("Male"),
              ),
              ListTile(
                leading: Radio(
                    value: Gender.female,
                    groupValue: gender,
                    onChanged: (Gender value) {
                      setState(() {
                        this.gender = value;
                      });
                    }),
                title: Text("Femail"),
              ),
              ListTile(
                leading: Radio(
                    value: Gender.transgender,
                    groupValue: gender,
                    onChanged: (Gender value) {
                      setState(() {
                        this.gender = value;
                      });
                    }),
                title: Text("transgender"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
