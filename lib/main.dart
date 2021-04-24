import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String output = "0";
  String _output = "0";

  double num1 = 0.0, num2 = 0.0;
  String oprend = "";
  operation(String btnText) {
    if (btnText == "C") {
      _output = "0";
      num1 = num2 = 0.0;
      oprend = "";
    } else if (btnText == "+" ||
        btnText == "-" ||
        btnText == "x" ||
        btnText == "/") {
      num1 = double.parse(output);
      oprend = btnText;
      _output = "0";
    } else if (btnText == "=") {
      num2 = double.parse(output);

      if (oprend == "+") {
        _output = (num1 + num2).toString();
      }
      if (oprend == "-") {
        _output = (num1 - num2).toString();
      }
      if (oprend == "x") {
        _output = (num1 * num2).toString();
      }
      if (oprend == "/") {
        _output = (num1 / num2).toString();
      }

      num1 = 0.0;
      num2 = 0.0;
      oprend = "";
    } else {
      _output = _output + btnText;
    }

    setState(() {
      output = double.parse(_output).toStringAsFixed(2);
    });
  }

  Widget button(String btnText) {
    return Expanded(
      child: RawMaterialButton(
        shape: Border.all(color: Colors.black12, width: 2),
        fillColor: Colors.grey,
        child: Text(
          "$btnText",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        onPressed: () {
          operation(btnText);
        },
        padding: EdgeInsets.all(30.0),
        splashColor: Colors.redAccent,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.home),
          title: Text("Calculater"),
          backgroundColor: Colors.black12,
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.bottomRight,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12, width: 2),
                      color: Colors.black12),
                  padding: EdgeInsets.all(25),
                  margin: EdgeInsets.only(bottom: 8),
                  child: Text(
                    "$output",
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Row(
                children: [
                  button("7"),
                  SizedBox(
                    width: 5,
                  ),
                  button("8"),
                  SizedBox(
                    width: 5,
                  ),
                  button("9"),
                  SizedBox(
                    width: 5,
                  ),
                  button("/"),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  button("4"),
                  SizedBox(
                    width: 5,
                  ),
                  button("5"),
                  SizedBox(
                    width: 5,
                  ),
                  button("6"),
                  SizedBox(
                    width: 5,
                  ),
                  button("x"),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  button("3"),
                  SizedBox(
                    width: 5,
                  ),
                  button("2"),
                  SizedBox(
                    width: 5,
                  ),
                  button("1"),
                  SizedBox(
                    width: 5,
                  ),
                  button("-"),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  button("0"),
                  SizedBox(
                    width: 5,
                  ),
                  button("C"),
                  SizedBox(
                    width: 5,
                  ),
                  button("+"),
                  SizedBox(
                    width: 5,
                  ),
                  button("="),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
