import 'package:flutter/material.dart';
import 'package:social_app/view_check.dart';
import 'package:social_app/view_search.dart';
import 'package:social_app/view_home.dart';
import 'package:social_app/view_favorite.dart';
import 'package:social_app/view_profile.dart';

class AppHome extends StatefulWidget {
  @override
  _AppHomeState createState() => new _AppHomeState();
}

class _AppHomeState extends State<AppHome> with SingleTickerProviderStateMixin {
int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

        appBar: new AppBar(
          centerTitle: true,
          title: new Text("Nature Drive"),
          elevation: 0.7,
          bottom: PreferredSize(
            preferredSize: Size(50, 150),
            child: Container(),
          ),
//        new TabBar(
//          controller: _tabController,
//          indicatorColor: Colors.white,
//          tabs: <Widget>[
//            new Tab(
//              icon: Icon(Icons.home),
//            ),
//            new Tab(
//              icon: Icon(Icons.search),
//            ),
//            new Tab(
//              icon: Icon(Icons.favorite),
//            ),
//            new Tab(
//              icon: Icon(Icons.check),
//            ),
//            new Tab(
//              icon: Icon(Icons.person),
//            ),
//          ],
//        ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: new Icon(Icons.notifications_none),


            )
          ],
        ),

        drawer: new Drawer(
          child: ListView(
            children: <Widget>[
              new ListTile(
                title: new Text(
                  'Application Settings',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 30.0,
                  ),
                ),
              ),
              new ListTile(
                title: new Text('Theme'),
                onTap: (null),
              ),
              new ListTile(
                title: new Text('Contact Us'),
              ),
              new ListTile(
                title: new Text('Legal'),
              ),
            ],
          ),
        ),

        backgroundColor: new Color(0xffffffff),
        body: new Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex ,
    items:[
    BottomNavigationBarItem
    (
    icon: new Icon( Icons.home),
    title: new Text("Home"),

    ),
    BottomNavigationBarItem
    (
    icon: new Icon( Icons.search),
    title: new Text("Search"),

    ),
    BottomNavigationBarItem
    (
    icon: new Icon( Icons.favorite),
    title: new Text("Marked"),

    ),
    BottomNavigationBarItem
    (
    icon: new Icon( Icons.check),
    title: new Text("Check"),

    ),
    BottomNavigationBarItem
    (
    icon: new Icon( Icons.person),
    title: new Text("Profile"),

    ),
  ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          }
          ,
    ),
    )


    );

  }

  }

//class MyBottomNavigationBar extends StatefulWidget {
//  @override
//  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
//}
//
//class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      bottomNavigationBar: BottomNavigationBar(
//          items:[
//              BottomNavigationBarItem
//                (
//          icon: new Icon( Icons.home),
//          title: new Text("Home"),
//
//      ),
//            BottomNavigationBarItem
//              (
//              icon: new Icon( Icons.search),
//              title: new Text("Search"),
//
//            ),
//            BottomNavigationBarItem
//              (
//              icon: new Icon( Icons.favorite),
//              title: new Text("Marked"),
//
//            ),
//            BottomNavigationBarItem
//              (
//              icon: new Icon( Icons.check),
//              title: new Text("Check"),
//
//            ),
//            BottomNavigationBarItem
//              (
//              icon: new Icon( Icons.person),
//              title: new Text("Profile"),
//
//            ),
//      ]
//      ),
//
//    );
//  }
//
//}

