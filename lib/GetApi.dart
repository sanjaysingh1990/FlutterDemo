import 'dart:async';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GetApi extends StatefulWidget {
  @override
  _GetApiState createState() => _GetApiState();
}

class _GetApiState extends State<GetApi> {
  final topAppBar = AppBar(
    title: new Text("Get Api"),
    backgroundColor: Colors.indigo,
    centerTitle: true,
  );

  final String url = "https://swapi.co/api/people";
  List mData = [];

  @override
  void initState() {
    super.initState();
    CupertinoActivityIndicator(animating: true, radius: 10.0);
    getJasonData();
  }

  Future<String> getJasonData() async {
    var response = await http.get(url);
    print(response.body);
    setState(() {
      var convertDataToJason = json.decode(response.body);
      mData = convertDataToJason['results'];
    });
    return "Success";
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: topAppBar,
      body: mData.isEmpty
          ? new Center(child: new CupertinoActivityIndicator())
          : new ListView.builder(
              itemCount: mData.isEmpty ? 0 : mData.length,
              itemBuilder: (BuildContext context, int index) {
                return new Container(
                  child: new Center(
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        new Card(
                          child: new Container(
                            padding: const EdgeInsets.all(20.0),
                            child: new Text(mData[index]['name']),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
    );
  }
}
