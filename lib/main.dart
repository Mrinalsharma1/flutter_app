import 'package:flutter/cupertino.dart';
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
      home: AlertDialogwidget(),
    );
  }
}

class AlertDialogwidget extends StatelessWidget {
  TextEditingController _textEditingController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: RaisedButton(
            child: Text("Basic alert box"),
            onPressed: () async {
              Alertwidget(context);
              TextFieldAlertwidget(context, _textEditingController);
              final Field fieldatt = await ConfirmAlertwidget(context);
              print("User Selection $fieldatt");

              final selectopt option = await SelectionoptAlertwidget(context);
              print(option);
            },
            color: Colors.blueAccent,
          ),
        ),
      ),
    );
  }
}

Alertwidget(BuildContext context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            title: Text("Sample Alert Dialog"),
            content: Text("This is For Notification purpose!!!"),
            actions: [
              RaisedButton(
                child: Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                color: Colors.blue,
              )
            ]);
      });
}

TextFieldAlertwidget(
    BuildContext context, TextEditingController textEditingController) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            title: Text("TextField Alert Dialog"),
            content: TextFormField(
              decoration: InputDecoration(
                hintText: "Entae whatever You Want",
              ),
              controller: textEditingController,
            ),
            actions: [
              RaisedButton(
                child: Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                color: Colors.blue,
              )
            ]);
      });
}

enum Field { Confirm, Accept }
Future<Field> ConfirmAlertwidget(BuildContext context) async {
  return showDialog<Field>(
      context: context,
      builder: (BuildContext context) {
        barrierDismissible:
        false;
        return AlertDialog(
            title: Text("Confirm Alert Dialog"),
            content: Text("this is for notify!!"),
            actions: [
              RaisedButton(
                child: Text("Cancle"),
                onPressed: () {
                  Navigator.of(context).pop(Field.Confirm);
                },
                color: Colors.blue,
              ),
              RaisedButton(
                child: Text("Accept"),
                onPressed: () {
                  Navigator.of(context).pop(Field.Accept);
                },
                color: Colors.blue,
              ),
            ]);
      });
}

enum selectopt { c, java, php, Python }
Future<selectopt> SelectionoptAlertwidget(BuildContext context) async {
  return showDialog<selectopt>(
      context: context,
      builder: (BuildContext context) {
        barrierDismissible:
        true;
        return SimpleDialog(
          title: Text("Choose any One"),
          children: [
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, selectopt.c);
              },
              child: Text("c"),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, selectopt.java);
              },
              child: Text("java"),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, selectopt.php);
              },
              child: Text("php"),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, selectopt.Python);
              },
              child: Text("python"),
            )
          ],
        );
      });
}
