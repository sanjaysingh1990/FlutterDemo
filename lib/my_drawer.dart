import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  String text = "Drawer";
  FocusNode firstNameField = new FocusNode();
  FocusNode lastNameField = new FocusNode();
  GlobalKey<FormState> formKey = new GlobalKey();

  String _validateText(String value) {
    if (value.isEmpty) {
      return "Please enter your name";
    }
    return null;
  }

  _submit() {
    if (formKey.currentState.validate()) {
      print("Success");
    } else {
      print("Failure");
    }
  }

  _showDatePicker() async {
    DateTime dateTime = await showDatePicker(context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(1980),
        lastDate: new DateTime(2020),initialDatePickerMode: DatePickerMode.day);
    setState(() {
      text = "${dateTime.day} ${dateTime.month} ${dateTime.year}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Drawer"),
        actions: <Widget>[
          new PopupMenuButton(
            itemBuilder: (context) {
              return [
                new PopupMenuItem(child: new Text("A"), value: 1,),
                new PopupMenuItem(child: new Text("B"), value: 2,),
                new PopupMenuItem(child: new Text("C"), value: 3,),
                new PopupMenuItem(child: new Text("D"), value: 4,),
              ];
            },
            icon: new Icon(Icons.more_vert),
            onSelected: (value) {
              switch (value) {
                case 0:
                  print("selected value is ::: $value");
                  break;
                case 1:
                  print("selected value is ::: $value");
                  break;
                case 2:
                  print("selected value is ::: $value");
                  break;
                case 3:
                  print("selected value is ::: $value");
                  break;
              }
            },
          )
        ],
      ),
      body: new Padding(padding: const EdgeInsets.all(12.0),
        child: new Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              new TextFormField(
                focusNode: firstNameField,
                validator: _validateText,
                keyboardType: TextInputType.text,
                decoration: new InputDecoration(
                  labelText: "First Name",
                  hintText: "Enter your name",
                  helperText: "yzdfgklnd",
                ),
                onFieldSubmitted: (value) {
                  FocusScope.of(context).requestFocus(lastNameField);
                },
              ),
              new TextFormField(
                focusNode: lastNameField,
                validator: _validateText,
                keyboardType: TextInputType.text,
                decoration: new InputDecoration(
                  labelText: "Last Name",
                  hintText: "Enter your name",
                  helperText: "yzdfgklnd",
                ),
                onFieldSubmitted: (value) {
                  lastNameField.unfocus();
                },
              ),
              new Text(text),
              new SizedBox(height: 50.0,),
              new RaisedButton(onPressed: () {
                _showDatePicker();
              }, child: new Text("Submit"),)
            ],
          ),
        ),
      ),
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Amit Bhardwaj"),
              accountEmail: new Text("abc@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                child: new Text("AB"),
              ),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  child: new Text("cd"),
                ),
                new CircleAvatar(
                  child: new Text("fg"),
                ),
              ],
              decoration: new BoxDecoration(
                  color: Colors.purpleAccent
              ),
            ),
            new ListTile(
              leading: new Icon(Icons.home),
              title: new Text("Home"),
              onTap: () {
                setState(() {
                  text = "Home";
                });
                Navigator.pop(context);
              },
            ),
            new ListTile(
              leading: new Icon(Icons.home),
              title: new Text("Shop"),
              onTap: () {
                setState(() {
                  text = "Shop";
                });
                Navigator.pop(context);
              },
            ),
            new ListTile(
              leading: new Icon(Icons.home),
              title: new Text("Logout"),
              onTap: () {
                setState(() {
                  text = "Logout";
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
