// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer List'),
        backgroundColor: Colors.purple[800],
      ),
      body: Container(
        child: Center(
          child: Text('Home Page', style: TextStyle(fontSize: 20.0),),
        ),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                HeaderDrawer(),
                DrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget DrawerList() {
  return Container(
    padding: EdgeInsets.only(top: 15.0),
    child: Column(
      children: [
        menuItem("My Files", Icons.folder),
        menuItem("Shared with me", Icons.group),
        menuItem("Recent", Icons.access_time),
        menuItem("Trash", Icons.delete),

        Container(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Divider(
                color: Colors.black,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(34.0, 20.0, 0, 0),
                child: Row(
                  children: [
                    Text('Labels', style: TextStyle(fontSize: 17.0, color: Colors.black45),),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.0),
                child: menuItem("Family", Icons.bookmark),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
 Widget menuItem(String title, IconData icon) {
  return Material(
    child: InkWell(
      onTap: (){},
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Row(
          children: [
            Expanded(
              child: Icon(
                icon,
                size: 20.0,
                color: Colors.black45,
              ),
            ),
            Expanded(
              flex: 5,
                child: Text(title, style: TextStyle(color: Colors.black, fontSize: 16.0),),
            ),
          ],
        ),
      ),
    ),
  );
 }








