import 'package:flutter/material.dart';

class FormDemo extends StatefulWidget {
  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<FormDemo> {
  final _formKey = GlobalKey<FormState>();

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: new AppBar(
        title: new Text("Login"),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: new SingleChildScrollView(
              child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                new SizedBox(height: 16.0),
                new TextFormField(
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                  },
                  keyboardType: TextInputType.text,
                  decoration: new InputDecoration(
                      labelText: 'Enter your username',
                      counterStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(1.0))),
                  style: new TextStyle(
                    fontSize: 12.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                new SizedBox(height: 16.0),
                new TextFormField(
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter password';
                    }
                  },
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: new InputDecoration(
                      labelText: 'Enter your password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0.5))),
                  style: new TextStyle(
                    fontSize: 12.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w200,
                  ),
                ),


                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: new ButtonTheme(
                    child: new RaisedButton(

                        color: Theme.of(context).accentColor,
                        splashColor: Colors.blueGrey,
                        child: new Container(
                          height: 50.0,
                          alignment: Alignment.center,
                          width: double.infinity,
                            child: new Text("Login",
                              style: TextStyle(color:Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,

                              ),)),
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            // If the form is valid, we want to show a Snackbar
                            _scaffoldKey.currentState.showSnackBar(
                                SnackBar(content: Text('Processing Data')));
                          }
                        }),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: new Text(
                    "Already a member?Sign in",
                    style: new TextStyle(fontSize:12.0,
                        color: const Color(0xFF5dade2),
                        fontWeight: FontWeight.w300,
                        fontFamily: "Roboto"),

                  ),
                ),



              ],
            ),
          )),
        ),
      ),
    );
  }
}
