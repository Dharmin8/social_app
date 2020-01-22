import 'package:flutter/material.dart';
import 'package:naturedrive/authentication.dart';
import 'authentication.dart';
class LoginPage extends StatefulWidget {
  

  LoginPage({
    this.auth,
    this.onSignedIn, onSignedOut,
  });

  final AuthImplementation auth;
  final VoidCallback onSignedIn;

  @override
  _LoginPageState createState() => _LoginPageState();

}

enum FormType { login, register }

class _LoginPageState extends State<LoginPage> {
  final formKey = new GlobalKey<FormState>();
  FormType _formType = FormType.login;
  String _email = "";
  String _password = "";
  static const PrimaryColor = const Color(0xFFFFFF);
  // #30CA41

  //methods
  bool validateAndSave() {
    final form = formKey.currentState;

    if(form.validate())
    {
      form.save();
      return true;
    }
    else
    {
      return false; 
    }
  }
      void validateAndSubmit() async
      {
        if(validateAndSave())
          {
            try {
              if(_formType==FormType.login){

                String userId = await widget.auth.SignIn(_email,_password);
                print("login userId = " + userId);
              }
              else{
                String userId = await widget.auth.SignUp(_email,_password);
                print("Register userId = " + userId);
              }
              widget.onSignedIn();

            }
            catch (e){
              print("Error = " + e.toString() );
            }
          }
      }
  void moveToRegister() {
    formKey.currentState.reset();
    setState(() {
      _formType = FormType.register;
    });
  }

  void moveToLogin() {
    formKey.currentState.reset();
    setState(() {
      _formType = FormType.login;
    });
  }

  //Design
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: new AppBar(
        backgroundColor: PrimaryColor,
      ),
      body: Container(
        margin: EdgeInsets.all(15.0),
        child: new Form(
            key: formKey,
            child: new Column(
              children: createInputs() + createButtons(),
            )),
      ),
    );
  }

  List<Widget> createInputs() {
    return [
      SizedBox(
        height: 00.0,
      ),
      logo(),
      SizedBox(
        height: 20.0,
      ),
      new TextFormField(
        decoration: new InputDecoration(labelText: 'Email'),
        validator: (value) {
          return value.isEmpty ? 'Please Enter Your Email' : null;
        },
        onSaved: (value) {
          return _email = value;
        },
      ),
      SizedBox(
        height: 10.0,
      ),
      new TextFormField(
        decoration: new InputDecoration(labelText: 'Password'),
        obscureText: true,
        validator: (value) {
          return value.isEmpty ? 'Please Enter Your Password' : null;
        },
        onSaved: (value) {
          return _password = value;
        },
      ),
      SizedBox(
        height: 20.0,
      ),
    ];
  }

  Widget logo() {
    return new Hero(
      child: new CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 110,
          child: Image.asset('images/BootIcon.png')),
      tag: 'hero',
    );
  }

  List<Widget> createButtons() {
    if (_formType == FormType.login) {
      return [
        new RaisedButton(
          child: new Text("Login", style: new TextStyle(fontSize: 20.0)),
          onPressed: () {
            validateAndSubmit();
          },
        ),
        SizedBox(
          height: 10.0,
        ),
        new FlatButton(
          child: new Text("Don't Have an Account? Sign Up Now!",
              style: new TextStyle(fontSize: 14.0, color: Colors.blueAccent)),
          onPressed: () {
            moveToRegister();
          },
        ),
      ];
    } else {
      return [
        new RaisedButton(
          child: new Text("Create Account", style: new TextStyle(fontSize: 20.0)),
          onPressed: () {
            validateAndSubmit();
          },
        ),
        SizedBox(
          height: 10.0,
        ),
        new FlatButton(
          child: new Text("Already Have an Account? Login Now",
              style: new TextStyle(fontSize: 14.0, color: Colors.blueAccent)),
          onPressed: () {
            moveToLogin();
          },
        ),
      ];
    }
  }
}
