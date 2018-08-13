import 'package:flutter/material.dart';

class LayoutTwo extends StatefulWidget {
  @override
  _LayoutTwoState createState() => _LayoutTwoState();
}

class _LayoutTwoState extends State<LayoutTwo> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("Layout Two"),
        ),
        body: new Column(
          children: <Widget>[
            new Expanded(
                child: new Container(
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(bottom: 10.0),
              decoration: BoxDecoration(color: Colors.cyan),
              child: new Text(
                "teal text",
                style: TextStyle(color: Colors.purple, fontSize: 20.0),
              ),
            )),
            new Expanded(
                child: new Container(
              margin: EdgeInsets.only(bottom: 10.0),
              decoration: BoxDecoration(color: Colors.blue),
              child: new Row(
                children: <Widget>[
                  new Expanded(
                      child: new IconButton(
                    icon: Icon(Icons.indeterminate_check_box),
                    onPressed: () {
                      setState(() {
                        count=count-1;
                      });
                    },
                  )),
                  new Expanded(
                      child: Center(
                    child: new Text(
                      "$count",
                      style: TextStyle(fontSize: 60.0, color: Colors.white),
                    ),
                  )),
                  new Expanded(
                      child: new IconButton(
                    icon: Icon(Icons.add_box),
                    onPressed: () {
                      setState(() {
                        count=count+1;
                      });
                    },
                  )),
                ],
              ),
            )),
            new Expanded(
                child: new Container(
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(bottom: 10.0),
              decoration: BoxDecoration(color: Colors.yellow),
              child: new Text(
                "Yellow text",
                style: new TextStyle(color: Colors.blue, fontSize: 20.0),
              ),
            )),
            new Expanded(
                child: new Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.purple),
              child: new Text(
                "Purple text",
                style: TextStyle(color: Colors.yellow, fontSize: 30.0),
              ),
            ))
          ],
        ));
  }
}
