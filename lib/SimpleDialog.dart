import 'dart:async';

import 'package:flutter/material.dart';

class SimpleDialogDemo extends StatefulWidget {
  @override
  _State createState() => _State();
}

enum Answers { YES, NO, MAYBE }

class _State extends State<SimpleDialogDemo> {
  String _answer = "";

  void _setAnswer(String value) {
    setState(() {
      _answer = value;
    });
  }

  Future<Null> _askUser() async {
    switch (await showDialog(
        context: context,
        builder: (BuildContext context) {
          return new SimpleDialog(
            title: new Text("Do you like Flutter?"),
            children: <Widget>[
              new SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, Answers.YES);
                },
                child: new Text("Yes"),
              ),
              new SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, Answers.NO);
                },
                child: new Text("No"),
              ),
              new SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, Answers.MAYBE);
                },
                child: new Text("Maybe"),
              ),
            ],
          );
        })) {
      case Answers.YES:
        _setAnswer('Yes');
        break;
      case Answers.NO:
        _setAnswer('No');
        break;
      case Answers.MAYBE:
        _setAnswer('Maybe');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Simple Dialog"),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: new Column(
            children: <Widget>[
              new Text("The button clicked is $_answer"),
              new RaisedButton(
                onPressed: () {
                  _askUser();},
                child: new Text("Click me"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
