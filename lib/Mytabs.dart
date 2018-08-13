import 'package:flutter/material.dart';

class MyTabs extends StatefulWidget {
  @override
  _MyTabsState createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs>  with SingleTickerProviderStateMixin{

  int _index = 0;
  Widget _selectedScreen;
  var _color;
  TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller=new TabController(length: 3, vsync: this);
    _color=Colors.amber;
  }




  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text("My Tabs"),
            bottom: new TabBar(tabs: [
              new Tab( child: Icon(Icons.home),),
              new Tab( text: "SHOP"),
              new Tab( text: "HOTEL"),

            ],controller: _controller),
          ),
          body: new TabBarView(children: [
            getHome(),
            getShop(),
            getHotel()
          ],controller: _controller, physics: BouncingScrollPhysics())
      ),
    );
  }



  getHome() {
    _color=Colors.amber;
    return new Center(
      child: new Text(
        "HOME",
        style: new TextStyle(fontSize: 24.0, color: _color),
      ),
    );
  }

  getShop() {
    _color=Colors.teal;
    return new Center(
      child: new Text(
        "SHOP",
        style: new TextStyle(fontSize: 24.0, color: _color),
      ),
    );
  }

  getHotel() {
    _color=Colors.deepOrange;
    return new Center(
      child: new Text(
        "HOTEL",
        style: new TextStyle(fontSize: 24.0, color: _color),
      ),
    );
  }
}
