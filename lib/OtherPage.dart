import 'package:flutter/material.dart';

class OtherPage extends StatelessWidget {
  final String pageName;

  OtherPage(this.pageName);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(pageName),
      ),
      body: Center(child: new Text(pageName,style: TextStyle(
        fontSize: 30.0,
        color: Colors.blue
      ),)),
    );
  }
}
