import 'package:flutter/material.dart';

class ExpandableListDemo extends StatefulWidget {
  @override
  _ExpandableListDemoState createState() => _ExpandableListDemoState();
}

class _ExpandableListDemoState extends State<ExpandableListDemo> {
  static final list = new List.generate(10, (i) => "item $i");

  final topAppBar = AppBar(
    title: new Text("Expandable List"),
    backgroundColor: Colors.indigo,
    centerTitle: true,
  );

  final makeBody = Container(
    child: new ListView.builder(
        itemBuilder: (context, i) => ExpansionTile(
              title: new Text("Header $i"),
              children: list
                  .map((val) => new ListTile(
                        title: new Text(val),
                      ))
                  .toList(),
            ),
      itemCount: 5,
      physics: BouncingScrollPhysics(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: topAppBar,
      body: makeBody,
    );
  }
}
