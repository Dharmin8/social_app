

import 'package:flutter/material.dart';
import 'package:social_app/model/drive_locations.dart';
import 'package:social_app/app_home.dart';

class LocationSelect extends StatelessWidget {
  final Icon cusIcon = Icon(Icons.search);
  Widget cusSearchBar = Text("Select Your Location");
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: cusSearchBar,
        actions: <Widget>[
          IconButton(
            onPressed: (){

            },
            icon: cusIcon,
          )
        ],
      ),
      body: (

new ListView.builder(itemCount: locationData.length,
itemBuilder: (context, i) =>new Column(
  children: <Widget>[
    new Divider(
      height: 20,
    ),
    new ListTile(

      title: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Text(
            locationData[i].name,
            textAlign: TextAlign.center,
            style: new TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          )
        ],
      ),

    )
  ],
    )
)
      ),
    );


  }
}

//class LocationSelect extends StatefulWidget {
//  @override
//  _LocationSelectState createState() => _LocationSelectState();
//}
//
//class _LocationSelectState extends State<LocationSelect> {
//  @override
//  Widget build(BuildContext context) {
//    return new ListView.builder(
//      itemCount: homeData.length,
//      itemBuilder: (context, i) => new Column(
//        children: <Widget>[
//          new Divider(
//            height: 20.0,
//          ),
//
//          new ListTile(
//            leading: new CircleAvatar(
//              foregroundColor: Theme.of(context).primaryColor,
//              backgroundColor: Colors.grey,
//              backgroundImage: new AssetImage(homeData[i].avatarUrl),
//            ),
//
//            title: new Row(
//              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//              children: <Widget>[
//                new Text(
//                  homeData[i].name,
//                  textAlign: TextAlign.center,
//                  style: new TextStyle(fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold),
//                )
//              ],
//            ),
//            subtitle: new Container(
//              padding: const EdgeInsets.only(top: 10.0),
//              child: new Text(
//                homeData[i].desc,
//                textAlign: TextAlign.left,
//                style: new TextStyle(color: Colors.grey, fontSize: 15.0),
//              ),
//            ),
//          ),
//        ],
//      ),
//    );
//  }
//}