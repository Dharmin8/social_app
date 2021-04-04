import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:social_app/Setup/Pages/home.dart';

class Login extends StatefulWidget {
  @override
  State createState() => new _LoginState();
}

class _LoginState extends State<Login> {
  String _email, _password;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black,
      body: new Stack(
        key: _formKey,
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("media/background_img.jpg"),
            fit: BoxFit.cover,
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Form(
                child: new Theme(
                  data: new ThemeData(
                    brightness: Brightness.dark,
                    primarySwatch: Colors.teal,
                    inputDecorationTheme: new InputDecorationTheme(
                      labelStyle: new TextStyle(
                        color: Colors.teal,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  child: new Container(
                    padding: const EdgeInsets.all(40.0),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new TextFormField(
                          onSaved: (input) => _email = input,
                          decoration: new InputDecoration(
                            labelText: "Enter Email: ",
                          ),
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                        ),
                        new TextFormField(
                          onSaved: (input) => _password = input,
                          decoration: new InputDecoration(
                            labelText: "Enter Password: ",
                          ),
                          controller: _passwordController,
                          keyboardType: TextInputType.text,
                          obscureText: true,
                        ),
                        new Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                        ),
                        new MaterialButton(
                          color: Colors.teal,
                          textColor: Colors.white,
                          child: new Text("REGISTER"),
                          onPressed: _performLogin,
                          splashColor: Colors.redAccent,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Future<void> _performLogin() async {
    final formState = _formKey.currentState;
    RegExp _regex = RegExp("^\\w+@[a-zA-Z_]+?\\.[a-zA-Z]{2,3}\$");
    if(_regex.hasMatch(_email)) {
      formState.save();
      try {
        FirebaseUser user = (await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password)).user;
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Home()));
      } catch(e) {
        print(e.message);
      }
    }
  }
}
