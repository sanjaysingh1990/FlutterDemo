import 'package:flutter/material.dart';

class LayoutTest extends StatefulWidget {
  @override
  _LayoutTestState createState() => new _LayoutTestState();
}

class _LayoutTestState extends State<LayoutTest> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.black,
        title: new Text("Layout Two"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: new Column(
          children: <Widget>[
            new Expanded(child: new Container(
              margin: EdgeInsets.only(bottom: 12.0),
              decoration: BoxDecoration(color: Colors.blueGrey),
              child: new Row(
                children: <Widget>[
                  new Expanded(child: new Container(
                    child: new Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start ,
                        children: <Widget>[
                          new Text(
                            "24 c",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 60.0, color: Colors.white),
                          ),
                          new Text(
                            "Auto",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 20.0, color: Colors.white),
                          ),
                          new Text(
                            "23.5c",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 20.0, color: Colors.white),
                          )
                        ],
                      ),
                    )
                    ,
                  )),
                  new Expanded(child: new Container(
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 40.0),
                          child: new IconButton(
                            alignment: Alignment.topRight,
                            icon: Icon(Icons.thumb_up, size: 80.0,color: Colors.white,),
                            onPressed: () {},
                          ),
                        ),
                      )
                  ))
                ],
              ),
            )),
            new Expanded(child: new Container(
              margin: EdgeInsets.only(bottom: 12.0),
              decoration
                  : BoxDecoration(color: Colors.blue),
                child: new Row(
                  children: <Widget>[
                    new Expanded(child: new Container(
                      child: new Container(
                        margin: EdgeInsets.only(left: 10.0),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start ,
                          children: <Widget>[
                            new Text(
                              "56%",
                              style: TextStyle(
                                  fontSize: 60.0, color: Colors.white),
                            ),
                            new Text(
                              "Auto",
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white),
                            ),
                            new Text(
                              "59%",
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white),
                            )
                          ],
                        ),
                      )
                      ,
                    )),
                    new Expanded(child: new Container(
                        alignment: Alignment.center,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 40.0),
                          child: new IconButton(
                            icon: Icon(Icons.subway, size: 80.0,color: Colors.white,),
                            onPressed: () {},
                          ),
                        )
                    ))
                  ],
                )
            )),
            new Expanded(child: new Container
              (
              margin: EdgeInsets.only(bottom: 12.0
              ),
              decoration: BoxDecoration(color: Colors.yellow),
                child: new Row(
                  children: <Widget>[
                    new Expanded(child: new Container(
                      child: new Container(
                        margin: EdgeInsets.only(left: 10.0),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start ,
                          children: <Widget>[
                            new Text(
                              "200",
                              style: TextStyle(
                                  fontSize: 60.0, color: Colors.white),
                            ),
                            new Text(
                              "Reading   ",
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white),
                            ),
                            new Text(
                              "198.8%",
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white),
                            )
                          ],
                        ),
                      )
                      ,
                    )),
                    new Expanded(child: new Container(
                        alignment: Alignment.center,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 40.0),
                          child: new IconButton(
                            icon: Icon(Icons.wb_sunny, size: 80.0,color: Colors.white,),
                            onPressed: () {},
                          ),
                        )
                    ))
                  ],
                )
            )),
            new Expanded(child
                : new Container(
              margin: EdgeInsets.only(
                  bottom
                      :
                  12.0
              )
              ,
              decoration
                  :
              BoxDecoration
                (
                  color
                      :
                  Colors
                      .
                  green
              )
              ,
                child: new Row(
                  children: <Widget>[
                    new Expanded(child: new Container(
                      child: new Container(
                        margin: EdgeInsets.only(left: 10.0),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start ,
                          children: <Widget>[
                            new Text(
                              "35pm",
                              style: TextStyle(
                                  fontSize: 60.0, color: Colors.white),
                            ),
                            new Text(
                              "Att",
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white),
                            ),
                            new Text(
                              "340m",
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white),
                            )
                          ],
                        ),
                      )
                      ,
                    )),
                    new Expanded(child: new Container(
                        alignment: Alignment.center,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 40.0),
                          child: new IconButton(
                            icon: Icon(Icons.fast_rewind, size: 80.0,color: Colors.white,),
                            onPressed: () {},
                          ),
                        )
                    ))
                  ],
                )
            )
            )
            ,
          ]
          ,
        )
        ,
      )
      ,
    );
  }


}
