
import 'package:flutter/material.dart';
import 'package:naturedrive/view_check.dart';
import 'package:naturedrive/view_search.dart';
import 'package:naturedrive/view_home.dart';
import 'package:naturedrive/view_favorite.dart';
import 'package:naturedrive/view_profile.dart';
import 'package:naturedrive/location_select.dart';
import 'authentication.dart';
class AppHome extends StatefulWidget {

  AppHome({
    this.auth,
    this.onSignedOut,

});

  final AuthImplementation auth;
  final VoidCallback onSignedOut;
  @override
  _AppHomeState createState() => new _AppHomeState();
}

class _AppHomeState extends State<AppHome> with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> tabs = [
    new Home(),
    new Search(),
    new Favorite(),
    new Check(),
    new Person(),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text(
          "What's Happening In",
          style: (TextStyle(fontSize: 22)),
        ),
        elevation: 0.7,
        bottom: PreferredSize(
          preferredSize: Size(50, 60),
          child: Container(
            alignment: Alignment.center,
            child: RaisedButton(
                textColor: Colors.white,
                color: Colors.green,
                child: Text(
                  "Mumbai",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Raleway'),
                ),
                elevation: 0,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LocationSelect();
                      },
                    ),
                  );
                }),
          ),
        ),
        actions: <Widget>[

          IconButton(
            onPressed: () {
            },
            icon: new Icon(Icons.notifications_none),
          )
        ],
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 25,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.search),
            title: new Text("Search"),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.favorite),
            title: new Text("Marked"),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.check),
            title: new Text("Attended"),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.person),
            title: new Text("Profile"),
          ),
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
