import 'package:flutter/material.dart';

class TestFlutter extends StatefulWidget {
  @override
  _TestFlutterState createState() => _TestFlutterState();
}

class _TestFlutterState extends State<TestFlutter>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  int _index = 0;
  var _color;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            leading: new Icon(Icons.search),
            title: Center(child: new Text("New Feed")),
            backgroundColor: _color,
            actions: <Widget>[
              new IconButton(icon: new Icon(Icons.person), onPressed: () {}),
            ],
            bottom: new TabBar(tabs: [
              new Tab(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.home),
                    new Text("Status"),
                  ],
                ),
              ),
              new Tab(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.photo),
                    new Text("Photo"),
                  ],
                ),
              ),
              new Tab(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.location_on),
                    new Text("Check in"),
                  ],
                ),
              ),
            ], controller: _controller)),
        body: new TabBarView(
            children: [getHome(), getHome(), getHome()],
            controller: _controller,
            physics: BouncingScrollPhysics()),
        bottomNavigationBar: new BottomNavigationBar(
          currentIndex: _index,
          items: [
            new BottomNavigationBarItem(
                icon: new Icon(
                  Icons.rss_feed,
                ),
                title: new Text("New Feeds"),
                backgroundColor: Colors.amber),
            new BottomNavigationBarItem(
                icon: new Icon(
                  Icons.people,
                ),
                title: new Text("Request"),
                backgroundColor: Colors.teal),
            new BottomNavigationBarItem(
                icon: new Icon(
                  Icons.message,
                ),
                title: new Text("Messages"),
                backgroundColor: Colors.green),
            new BottomNavigationBarItem(
                icon: new Icon(
                  Icons.notifications,
                ),
                title: new Text("Notification"),
                backgroundColor: Colors.deepOrangeAccent),
          ],
          onTap: (index) {
            setState(() {
              _index = index;
              if (index == 0) {
                _color = Colors.amber;
              } else if (index == 1) {
                _color = Colors.teal;
              } else if (index == 2) {
                _color = Colors.green;
              } else if (index == 3) {
                _color = Colors.deepOrangeAccent;
              }
            });
          },
        ));
  }

  getHome() {
    return new Center(
        child: new Card(
      elevation: 8.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
//        decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Padding(padding: EdgeInsets.only(top: 10.0, left: 10.0)),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: new CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://raw.githubusercontent.com/flutter/website/master/_includes/code/layout/lakes/images/lake.jpg',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: new Text("Shivam Sharma with 3 others",
                      style: TextStyle(color: Colors.black, fontSize: 20.0)),
                ),
              ],
            ),
            new Padding(padding: EdgeInsets.only(top: 20.0)),
            new Image.network(
              'https://raw.githubusercontent.com/flutter/website/master/_includes/code/layout/lakes/images/lake.jpg',
            ),
            new Text("12 Likes", style: TextStyle(color: Colors.grey)),
            Padding(
              padding: const EdgeInsets.only(top: 72.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.thumb_up,
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                        child: new Text(
                          "like",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.comment,
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: new Text(
                          "Comment",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.share,
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: new Text(
                          "Share",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
