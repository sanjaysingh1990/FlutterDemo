import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  String _title = "App Bar";
  String _myState = "No State";

  void _pressed(String msg) {
    setState(() {
      _myState = msg;
    });
  }

  @override
  void initState() {
    print("***init");
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    print("***dispose");
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }


  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print("***current state $state");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _myState,
      home: new Scaffold(
        appBar: AppBar(
          title: new Text(_title),
          actions: <Widget>[
            new IconButton(
                icon: new Icon(Icons.add_alert),
                onPressed: () {
                  _pressed("Allert clicked");
                }),
            new IconButton(
                icon: new Icon(Icons.people),
                onPressed: () {
                  _pressed("People clicked");
                }),
            new IconButton(
                icon: new Icon(Icons.access_alarm),
                onPressed: () {
                  _pressed("Alarmn clicked");
                }),
            new FlutterLogo(
            )
          ],
        ),
        body: new Container(
          padding: const EdgeInsets.all(32.0),
          child: new Center(
            child: new Text(_myState),
          ),
        ),
      ),
    );
  }
}
