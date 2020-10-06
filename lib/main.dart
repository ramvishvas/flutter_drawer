import 'package:flutter/material.dart';
// import 'package:flutter_drawer_and_routing/new_page.dart';

import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
      // routes: <String, WidgetBuilder>{
      //   "/new-page": (BuildContext context) => NewPage(title: 'New Page')
      // },
    );
  }
}
