import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class IosDialogDemo extends StatefulWidget {
  @override
  _IosDialogDemoState createState() => _IosDialogDemoState();
}

class _IosDialogDemoState extends State<IosDialogDemo> {
  final topAppBar = AppBar(
    title: new Text("IOS Dialog"),
    backgroundColor: Colors.indigo,
    centerTitle: true,
  );

  void _iosAlert(BuildContext context) {
    var dialog = new CupertinoAlertDialog(
      title: new Text("Alert"),
      content: new Text("This is IOS Alert Dialog...."),
      actions: <Widget>[
        new CupertinoDialogAction(
          child: new Text('Discard'),
          isDefaultAction: true,
          onPressed: () {
            Navigator.pop(context, 'Discard');
          },
        ),
        new CupertinoDialogAction(
            child: new Text('Accept'),
            isDefaultAction: true,
            onPressed: () {
              Navigator.pop(context, 'Accept');
            })
      ],
    );
    showDialog(context: context, child: dialog);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topAppBar,
      body: new Container(
          child: new CupertinoButton(
        child: new Text("Click me"),
        color: Colors.indigo,
        onPressed: () {
          _iosAlert(context);
        },
      )),
    );
  }
}
