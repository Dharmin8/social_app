import 'package:flutter/material.dart';
import 'package:social_app/model/home_model.dart';

class Favorite extends StatefulWidget {
  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: homeData.length,
      itemBuilder: (context, i) => new Column(
        children: <Widget>[
          new Divider(
            height: 20.0,
          ),

          new ListTile(
            leading: new CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: new AssetImage(homeData[i].avatarUrl),
            ),

            title: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  homeData[i].name,
                  textAlign: TextAlign.center,
                  style: new TextStyle(fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold),
                )
              ],
            ),
            subtitle: new Container(
              padding: const EdgeInsets.only(top: 10.0),
              child: new Text(
                homeData[i].desc,
                textAlign: TextAlign.left,
                style: new TextStyle(color: Colors.grey, fontSize: 15.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}