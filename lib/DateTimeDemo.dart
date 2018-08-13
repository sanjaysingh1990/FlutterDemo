import 'dart:async';

import 'package:flutter/material.dart';

class DateTimeDemo extends StatefulWidget {
  @override
  _DateTimeDemoState createState() => _DateTimeDemoState();
}

class _DateTimeDemoState extends State<DateTimeDemo> {
  final topAppBar = AppBar(
    title: new Text("Date Time Picker"),
    backgroundColor: Colors.indigo,
    centerTitle: true,
  );

  DateTime _date = new DateTime.now();
  TimeOfDay _time = new TimeOfDay.now();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picker = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: new DateTime(2017),
      lastDate: new DateTime(2029),
      initialDatePickerMode: DatePickerMode.year,);

    if (picker != null && picker != _date) {
      print("Selected Date ${_date.toString()}");
      setState(() {
        _date = picker;
      });
    }
  }

  Future<Null> _selectTime(BuildContext context) async {
    final TimeOfDay timePicked =
        await showTimePicker(context: context, initialTime: _time);
    if (timePicked != null && timePicked != _time) {
      print("Selected Time ${_time.toString()}");
      setState(() {
        _time = timePicked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topAppBar,
      body: Center(
        child: new Container(
          child: Padding(
            padding: const EdgeInsets.all(64.0),
            child: Column(
              children: <Widget>[
                new Text("Selected Date  ${_date.toString()}"),
                new RaisedButton(
                  child: new Text("Click me"),
                  onPressed: () {
                    _selectDate(context);
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  child: new Text("Selected Time  ${_time.toString()}"),
                ),
                new RaisedButton(
                  child: new Text("Click me"),
                  onPressed: () {
                    _selectTime(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
