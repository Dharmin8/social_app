import 'package:flutter/material.dart';
import 'package:naturedrive/app_home.dart';
import 'package:naturedrive/login.dart';
import 'package:naturedrive/mapping.dart';
import 'authentication.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Nature Drive",
      theme: new ThemeData(

        fontFamily: 'Raleway',
        primaryColor: Colors.green,
        accentColor: new Color(0xffffffff),
      ),
      home:
      new MappingPage(auth: Auth(),),
      


      debugShowCheckedModeBanner: false,
    );
  }
}
