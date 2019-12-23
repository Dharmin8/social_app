import 'package:flutter/material.dart';
import 'package:social_app/app_home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Nature Drive",
      theme: new ThemeData(
        primaryColor: Colors.green,
        accentColor: new Color(0xffffffff),
      ),
      home: new AppHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
