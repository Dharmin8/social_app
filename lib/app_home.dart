import 'package:flutter/material.dart';

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

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text("Social App"),
        elevation: 0.7,
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
        ],
      ),
      floatingActionButton: new FloatingActionButton.extended(
        backgroundColor: Colors.cyan,
        icon: Icon(Icons.add),
        label: Text('Join'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: new Text('Home'),
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: new Text('Search'),
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: new Text('Favorite'),
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check),
            title: new Text('Query'),
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: new Text('Profile'),
            backgroundColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}