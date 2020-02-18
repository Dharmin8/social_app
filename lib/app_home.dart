import 'package:flutter/material.dart';
import 'package:social_app/view_check.dart';
import 'package:social_app/view_search.dart';
import 'package:social_app/view_home.dart';
import 'package:social_app/view_favorite.dart';
import 'package:social_app/view_profile.dart';
import 'package:social_app/login_page.dart';

class AppHome extends StatefulWidget {
  @override
  _AppHomeState createState() => new _AppHomeState();
}

class _AppHomeState extends State<AppHome> with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 5, initialIndex: 0, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text("Welcome To *"),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(
              icon: Icon(Icons.home),
            ),
            new Tab(
              icon: Icon(Icons.search),
            ),
            new Tab(
              icon: Icon(Icons.favorite),
            ),
            new Tab(
              icon: Icon(Icons.check),
            ),
            new Tab(
              icon: Icon(Icons.person),
            ),
          ],
        ),
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
            ),
            new ListTile(
              title: new Text('Notifications'),
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
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new Home(),
          new Search(),
          new Favorite(),
          new Check(),
          new Person(),
        ],
      ),
      floatingActionButton: new FloatingActionButton.extended(
        backgroundColor: Colors.cyan,
        icon: Icon(Icons.add),
        label: Text('Register'),
        onPressed: () {
          Navigator.push(
            context,
            new MaterialPageRoute(
              builder: (BuildContext context) => new Login(),
            ),
          );
        },
      ),
    );
  }
}
