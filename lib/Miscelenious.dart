import 'package:flutter/material.dart';
class ChipDemo extends StatefulWidget {
  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(),
      body: new ListView(
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new Chip(
                label: new Text("moje"),
                onDeleted: () {},
              ),
              new Chip(
                label: new Text("SHOE"),
                onDeleted: () {},
                backgroundColor: Colors.deepOrange,
              ),
              new Chip(
                label: new Text("CHAPPAL"),
                onDeleted: () {},
              ),
            ],
          ),
          new Container(
            height: 500.0,
            child: new GridView.count(
              scrollDirection: Axis.horizontal,
              crossAxisCount: 4,
              children: <Widget>[
                new Card(
                  child: new Center(
                    child: new Text("helllo"),
                  ),
                ),
                new Card(
                  child: new Center(
                    child: new Text("helllo"),
                  ),
                ),
                new Card(
                  child: new Center(
                    child: new Text("helllo"),
                  ),
                ),
                new Card(
                  child: new Center(
                    child: new Text("helllo"),
                  ),
                ),
                new Card(
                  child: new Center(
                    child: new Text("helllo"),
                  ),
                ),
                new Card(
                  child: new Center(
                    child: new Text("helllo"),
                  ),
                ),
                new Card(
                  child: new Center(
                    child: new Text("helllo"),
                  ),
                ),
                new Card(
                  child: new Center(
                    child: new Text("helllo"),
                  ),
                ),
                new Card(
                  child: new Center(
                    child: new Text("helllo"),
                  ),
                ),
                new Card(
                  child: new Center(
                    child: new Text("helllo"),
                  ),
                ),
                new InkWell(
                  child: new Card(
                    child: new Center(
                      child: new Text("helllo"),
                    ),
                  ),
                  onTap: () {
                    print("YE LE TOUCH HOGYA");
                  },
                )
              ],
            ),
          ),
          new IconButton(
            icon: new Icon(Icons.accessibility),
            onPressed: () {
              print("M GANGADHAR HU");
            },
            tooltip: "SHAKTIMAN",
          )
        ],
      ),
    );
  }
}

class DemoSession extends StatefulWidget {
  @override
  _DemoSessionState createState() => _DemoSessionState();
}

class _DemoSessionState extends State<DemoSession> {
  bool _hideChip = false;

  bool _switchValue = false;

  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return new Scaffold(
      appBar: new AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: new Stepper(
            type: StepperType.vertical,
            currentStep: currentStep,
            onStepContinue: () {
              setState(() {
                currentStep++;
              });
            },
            onStepCancel: () {},
            onStepTapped: (index) {
              setState(() {
                currentStep = index;
              });
            },
            steps: [
              new Step(
                title: new Text("Step 1"),
                content: new Container(
                  child: new Text("BLA BLA BLA"),
                ),
              ),
              new Step(
                title: new Text("Step 2"),
                content: new Container(
                  child: new Text("BLA BLA BLA"),
                ),
              ),
            ]),
      ),
    );
  }
}


