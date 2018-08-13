import 'package:flutter/material.dart';
import 'package:flutterbottomnavbar/AlertDialogDemo.dart';
import 'package:flutterbottomnavbar/DateTimeDemo.dart';
import 'package:flutterbottomnavbar/OtherPage.dart';
import 'package:flutterbottomnavbar/SignupForm.dart';
import 'package:flutterbottomnavbar/form.dart';


class DrawerDemo extends StatefulWidget {
  @override
  _DrawerDemoState createState() => _DrawerDemoState();
}

class _DrawerDemoState extends State<DrawerDemo> {
  String mainProfile =
      "https://avatars3.githubusercontent.com/u/16825392?s=460&v=4";
  String otherProfile =
      "https://yt3.ggpht.com/-2_2skU9e2Cw/AAAAAAAAAAI/AAAAAAAAAAA/6NpH9G8NWf4/s900-c-k-no-mo-rj-c0xffffff/photo.jpg";

  void switchUser() {
    String backup = mainProfile;
    this.setState(() {
      mainProfile = otherProfile;
      otherProfile = backup;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Drawer"),
        backgroundColor: Colors.redAccent,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Shivam Sharma"),
              accountEmail: new Text("Shibisharma94@gmail.com"),
              currentAccountPicture: new GestureDetector(
                child: new CircleAvatar(
                  backgroundImage: new NetworkImage(mainProfile),
                ),
              ),

              otherAccountsPictures: <Widget>[
                new GestureDetector(
                  child: new CircleAvatar(
                    backgroundImage: new NetworkImage(otherProfile),
                  ),
                  onTap: () => switchUser(),
                )
              ],
              //for drawer user background image
              decoration: new BoxDecoration(
                  image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://raw.githubusercontent.com/flutter/website/master/_includes/code/layout/lakes/images/lake.jpg"))),
            ),
            new ListTile(
              title: getListItem("LOGIN", Icons.lock_open),
              onTap: () {
                Navigator.of(context).pop();
                //navigate to next screen
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) =>
                    new FormDemo()));
              },
            ),
            new Divider(),
            new ListTile(
              title: getListItem("Sign up", Icons.vpn_key),

              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) =>
                    new SignUpForm()));
              },
            ),
            new Divider(),
            new ListTile(
              title: getListItem("Search new School", Icons.search),

              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) =>
                    new DateTimeDemo()));
              },
            ),

            new Divider(),
            new ListTile(
              title: getListItem("Home", Icons.home),

              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) =>
                    new AlertDialogDemo()));
              },
            ),

            new Divider(),
            new ListTile(
              title: getListItem("Transactions", Icons.attach_money),

              onTap: () => Navigator.of(context).pop(),
            ),


            new Divider(),
            new ListTile(
              title: getListItem("Help", Icons.help),

              onTap: () => Navigator.of(context).pop(),
            ),

            new Divider(),
            new ListTile(
              title: getListItem("Settings", Icons.settings),

              onTap: () => Navigator.of(context).pop(),
            )


          ],
        ),
      ),
      body: new Center(
        child: new Text("Drawer...."),
      ),
    );
  }

  Widget getListItem(String txt,IconData icon) {
    return new Row(
        children: <Widget>[
          new Icon(
             icon,
              color: const Color(0xFF000000),
              size: 24.0),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text(
              "$txt",
              style: new TextStyle(fontSize: 15.0,
                  color: const Color(0xFF000000),
                  fontWeight: FontWeight.w500,
                  fontFamily: "Roboto"),
            ),
          ),


        ]

    );
  }
}
