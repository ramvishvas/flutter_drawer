import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_drawer_and_routing/new_page.dart';

class HomePage extends StatelessWidget {
  Widget _myDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Ramvishvas Kumar'),
            accountEmail: Text('ramvishvasg@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: Text(
                'RK',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
            ),
            otherAccountsPictures: [
              CircleAvatar(
                child: Text('R2'),
              ),
              CircleAvatar(
                child: Text('R3'),
              ),
              CircleAvatar(
                child: Text('R4'),
              ),
            ],
          ),
          ListTile(
            title: Text('Page One'),
            trailing: Icon(Icons.arrow_circle_up),
            onTap: () => {
              Navigator.pop(context),
              // Navigator.of(context).pushNamed("/new-page"),
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => NewPage(title: 'Page One'),
                ),
              ),
            },
          ),
          Divider(),
          ListTile(
            title: Text('Page Two'),
            trailing: Icon(Icons.arrow_circle_up),
            onTap: () => {
              Navigator.pop(context),
              // Navigator.of(context).pushNamed("/new-page"),
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => NewPage(title: 'Page Two'),
                ),
              ),
            },
          ),
          Divider(),
          ListTile(
            title: Text('Page Three'),
            trailing: Icon(Icons.arrow_circle_up),
            onTap: () => {
              Navigator.pop(context),
              // Navigator.of(context).pushNamed("/new-page"),
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) =>
                      NewPage(title: 'Page Three'),
                ),
              ),
            },
          ),
          Divider(),
          ListTile(
            title: Text('Close'),
            trailing: Icon(Icons.close),
            onTap: () => {Navigator.pop(context)},
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Route Drawer'),
        elevation: defaultTargetPlatform == TargetPlatform.iOS ? 0 : 5.0,
      ),
      body: Center(child: Text('Home Page')),
      drawer: _myDrawer(context),
    );
  }
}
