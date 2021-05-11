import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCalender(),
    );
  }
}

class MyCalender extends StatelessWidget {
  final CalendarController _controller = CalendarController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text("calender"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.only(bottom: 270),
          child: TableCalendar(
            calendarController: _controller,
            availableGestures: AvailableGestures.horizontalSwipe,
            calendarStyle: CalendarStyle(
              weekdayStyle: TextStyle(color: Colors.blue),
              weekendStyle: TextStyle(color: Colors.green),
              outsideDaysVisible: false,
            ),
          ),
        ),
      ),
    );
  }
}
