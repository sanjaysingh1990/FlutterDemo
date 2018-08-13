import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';

class PullToRefresh extends StatefulWidget {
  @override
  _PullToRefreshState createState() => _PullToRefreshState();
}

class _PullToRefreshState extends State<PullToRefresh> {
  var list;
  var random;
  var refreshKey = GlobalKey<RefreshIndicatorState>();

  final topAppBar = AppBar(
    title: new Text("Pull to Refresh"),
    backgroundColor: Colors.indigo,
    centerTitle: true,
  );

  @override
  void initState() {
    super.initState();
    random = Random();
    list = List.generate(random.nextInt(10), (i) => "Item $i");
    onRefreshPulled();
  }

  Future<Null> onRefreshPulled() async {
    //to show loader when we launch fragment
    refreshKey.currentState?.show();
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      list = List.generate(random.nextInt(10), (i) => "Item $i");
    });
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topAppBar,
      body: RefreshIndicator(
          key: refreshKey,
          child: new ListView.builder(
              itemCount: list?.length,
              itemBuilder: (context, i) => ListTile(
                    title: new Text(list[i]),
                  )),
          onRefresh: onRefreshPulled),
    );
  }
}
