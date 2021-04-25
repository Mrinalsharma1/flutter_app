import 'package:flutter/material.dart';
import 'main.dart';

class Newcard extends StatelessWidget {
  final data datas;
  Newcard({Key key, this.datas}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amber,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Icon(
              datas.icon,
              size: 50,
            )),
            Text(
              datas.title,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
