// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HeaderDrawer extends StatefulWidget {
  const HeaderDrawer({Key? key}) : super(key: key);

  @override
  _HeaderDrawerState createState() => _HeaderDrawerState();
}

class _HeaderDrawerState extends State<HeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple[800],
      width: double.infinity,
      height: 200.0,
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            height: 70.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/emp.jpg'),
              ),
            ),
          ),
          Text('Sandra Adams', style: TextStyle(color: Colors.black54, fontSize: 20.0, fontWeight: FontWeight.bold),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('sandra_a88@gmail.com', style: TextStyle(color: Colors.white, fontSize: 13.0),),
              IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.arrow_drop_down, color: Colors.black54,),
              ),
            ],
          ),
        ],
      ),
    );
  }
}