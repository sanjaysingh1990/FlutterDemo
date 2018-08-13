import 'dart:async';

import 'package:flutter/material.dart';

class AlertDialogDemo extends StatefulWidget {
  @override
  _AlertDialogDemoState createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  String _action = '';

  void _answer(String value) {
    Navigator.pop(context);
    setState(() {
      _action = value;
    });
  }

/*  void _showAlert() {
    AlertDialog alertDialog = new AlertDialog(
      content: new Text("This is Alert Dialog. You like it?"),
      actions: <Widget>[
        new FlatButton(
            onPressed: () {
              _answer("Yes");
            },
            child: new Text("Yes")),
        new FlatButton(
            onPressed: () {
              _answer("No");
            },
            child: new Text("No"))
      ],
    );
    showDialog(context: context, child: alertDialog);
  }*/

  Future<Null> _neverSatisfied() async {
    return showDialog<Null>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return new AlertDialog(
          title: new Text('Rewind and remember'),
          content: new SingleChildScrollView(
            child: new ListBody(
              children: <Widget>[
                new Text('You will never be satisfied.'),
                new Text('You\’re like me. I’m never satisfied.'),
              ],
            ),
          ),
          actions: <Widget>[
            new FlatButton(
              child: new Text('Regret'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Alert Dialog"),
      ),
      body: new Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
              child: new RaisedButton(
                  child: new Text("click me"),
                  onPressed: () {
//                    _showAlert();
                    _neverSatisfied();
                  })),
        ),
      ),
    );
  }
}
