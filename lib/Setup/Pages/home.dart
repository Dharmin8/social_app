import 'dart:async';
import 'package:flutter/material.dart';
import 'package:social_app/login_page.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5),()=> AppHome());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[

          Container(decoration:BoxDecoration(color: Colors.green),
          ),
          Column(

            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                  Text(

                    "Nature Drive",style:TextStyle(fontSize: 40,color: Colors.white,),

                  ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 50,
                      child: Icon(
                        Icons.all_inclusive,
                        color: Colors.green,
                        size: 50,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(),
                    ),
                  ],
                ),
              ),
            ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    Padding(
                      padding: EdgeInsets.only(bottom: 70),
                    ),
                    Text(
                      "Logging You In..",style: TextStyle(fontSize: 20,color: Colors.white,)
                    ),
                  ],
                ),
              )
       
   ],)
        ],
      ),
    );
  }
}