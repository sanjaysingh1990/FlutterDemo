import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _mScaffoldKey = GlobalKey<ScaffoldState>();
  final _mFormKey = GlobalKey<FormState>();
  String _mEmail;
  String _mPassword;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _mScaffoldKey,
      appBar: new AppBar(
        leading: Icon(Icons.arrow_back),
        title: new Text("Log in"),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: new Container(
        padding: const EdgeInsets.all(10.0),
        child: new Form(
          key: _mFormKey,
          child: new Column(
            children: <Widget>[
              new TextFormField(
                decoration: new InputDecoration(labelText: "Enter Email"),
                validator: (val) {
                  if (val.isEmpty) {
                    return 'Please enter some text in Email';
                  } else if (!val.contains('@')) {
                    return 'Please enter valid email';
                  }
                },
                onSaved: (val) => _mEmail = val,
              ),
              new TextFormField(
                validator: (val) {
                  if (val.isEmpty) {
                    return 'Please enter Password';
                  } else if (val.length < 6) {
                    return 'Password is too short';
                  }
                },
                obscureText: true,
                decoration: new InputDecoration(labelText: "Enter Password"),
                onSaved: (val) => _mPassword = val,
              ),
              new Padding(padding: const EdgeInsets.only(top: 20.0)),
              new RaisedButton(
                onPressed: () {
                  if (_mFormKey.currentState.validate()) {
                    final snackBar = new SnackBar(
                        content:
                            new Text("Login successfull $_mEmail $_mPassword"));
                    _mScaffoldKey.currentState.showSnackBar(snackBar);
                  }
                },
                child:
                    new Text("Log in", style: TextStyle(color: Colors.white)),
                color: Colors.teal,
              )
            ],
          ),
        ),
      ),
    );
  }
}
