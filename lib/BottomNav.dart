import 'package:flutter/material.dart';


class BottomBar extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: new BottomNavBar(title: 'Flutter Demo Home Page'),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  BottomNavBar({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<BottomNavBar> {
  int _counter = 0;
  int _index = 0;
  Widget _selectedScreen;
  var _color;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectedScreen = getPage(0);
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text(widget.title),

        backgroundColor: _color,
        actions: <Widget>[new IconButton(icon: new Icon(Icons.surround_sound),
            onPressed: null,
            color: Colors.white),
        new IconButton(
            icon: new Icon(Icons.label), onPressed: null, color: Colors.white)
        ],
      ),

      body: _selectedScreen,

      bottomNavigationBar: new BottomNavigationBar(
        currentIndex: _index,
        items: [
          new BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text("Home"),
              backgroundColor: Colors.amber),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.chat_bubble_outline),
              title: new Text("Chat"),
              backgroundColor: Colors.teal),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.favorite),
              title: new Text("Favorites"),
              backgroundColor: Colors.deepOrange),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.more),
              title: new Text("More"),
              backgroundColor: Colors.green),
        ],
        onTap: (index) {
          setState(() {
            _index = index;
            _selectedScreen = getPage(index);
          });
        },
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  getPage(int index) {
    Widget widget;

    switch (index) {
      case 0:
        widget = getHome();
        break;
      case 1:
        widget = getShop();
        break;
      case 2:
        widget = getHotel();
        break;
      case 3:
        widget = getEvent();
        break;
    }

    return widget;
  }

  getHome() {
    _color = Colors.amber;
    return new Container(

      child: SingleChildScrollView(
        child: new Column(

          children: <Widget>[

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: new Container(
                decoration: new BoxDecoration(
                    border: new Border.all(),
                    borderRadius: new BorderRadius.circular(100.0)

                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Row(

                    children: <Widget>[
                      new Icon(
                          Icons.search,
                          color: const Color(0xFF000000),
                          size: 18.0),

                      Expanded(
                        child: new Text(
                          "Serach Location",
                          style: new TextStyle(fontSize: 12.0,
                              color: const Color(0xFF000000),
                              fontWeight: FontWeight.w200,
                              fontFamily: "Roboto"),
                        ),
                      ),

                      new Icon(
                          Icons.cancel,
                          color: const Color(0xFF000000),
                          size: 18.0),

                    ],
                  ),
                ),

              ),
            ),


            //next view
            new Container(
              color: const Color(0xFFABC123),
              height: 60.0,
              child: new Row(
                children: <Widget>[
                  new Expanded(
                    child: new Text(
                      "    Featured Brands",
                      style: new TextStyle(fontSize: 16.0,
                          color: const Color(0xFF000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto"),
                    ),
                  ),

                  new Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: new Text(
                              "View All",
                              style: new TextStyle(fontSize: 16.0,
                                  color: const Color(0xFF5858FA),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto"),
                            ),
                          ),
                        ],
                      )

                  )

                ],

              ),
            ),


            //next veiw

            Container(
              height: 180.0,

              child: new Row(

                children: <Widget>[
                  new Expanded(child:
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Image.network(
                      'https://github.com/flutter/website/blob/master/_includes/code/layout/lakes/images/lake.jpg?raw=true',
                      fit: BoxFit.fill,
                    ),
                  ),
                  ),

                  new Expanded(child:
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Image.network(
                      'https://github.com/flutter/website/blob/master/_includes/code/layout/lakes/images/lake.jpg?raw=true',
                      fit: BoxFit.fill,
                    ),
                  ),
                  )

                ],
              ),
            ),

            //NEXT VIEW
            //next view
            new Container(
              color: const Color(0xFFABC123),
              height: 60.0,
              child: new Row(
                children: <Widget>[
                  new Expanded(
                    child: new Text(
                      "    Dispensory Storefonts",
                      style: new TextStyle(fontSize: 16.0,
                          color: const Color(0xFF000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto"),
                    ),
                  ),

                  new Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: new Text(
                              "View All",
                              style: new TextStyle(fontSize: 16.0,
                                  color: const Color(0xFF5858FA),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto"),
                            ),
                          ),
                        ],
                      )

                  )

                ],

              ),
            ),


            //next view
            //next veiw

            Container(
              height: 180.0,

              child: new Row(

                children: <Widget>[
                  new Expanded(child:
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Column(
                        children: <Widget>[
                          new Image.network(
                            'https://github.com/flutter/website/blob/master/_includes/code/layout/lakes/images/lake.jpg?raw=true',
                            fit: BoxFit.fill,
                          ),


                          new Container(

                              width: 200.0,
                              color: const Color(0xFFBDBDBD),
                              child: Center(
                                child: new Text(
                                  "MENU",
                                  style: new TextStyle(fontSize: 16.0,
                                      color: const Color(0xFF000000),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Roboto"),
                                ),
                              )
                          )


                        ],

                      )

                    //end here
                  ),
                  ),

                  new Expanded(child:
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Column(
                        children: <Widget>[
                          new Image.network(
                            'https://github.com/flutter/website/blob/master/_includes/code/layout/lakes/images/lake.jpg?raw=true',
                            fit: BoxFit.fill,
                          ),


                          new Container(

                              width: 200.0,
                              color: const Color(0xFFBDBDBD),
                              child: Center(
                                child: new Text(
                                  "MENU",
                                  style: new TextStyle(fontSize: 16.0,
                                      color: const Color(0xFF000000),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Roboto"),
                                ),
                              )
                          )


                        ],

                      )

                  ),
                  )

                ],
              ),
            ),


          ],
        ),
      ),
    );
  }

  getShop() {
    _color = Colors.teal;
    return new Center(
      child: new Text(
        "CHAT",
        style: new TextStyle(fontSize: 24.0, color: _color),
      ),
    );
  }

  getHotel() {
    _color = Colors.deepOrange;
    return new Center(
      child: new Text(
        "FAVORITE",
        style: new TextStyle(fontSize: 24.0, color: _color),
      ),
    );
  }

  getEvent() {
    _color = Colors.green;
    return new Center(
      child: new Text(
        "MORE",
        style: new TextStyle(fontSize: 24.0, color: _color),
      ),
    );
  }
}
