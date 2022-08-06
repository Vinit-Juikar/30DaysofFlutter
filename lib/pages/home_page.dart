// ignore_for_file: prefer_const_declarations, use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

final int days = 30;
final String name = "Vinit";

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text(
            "Welcome to $days days of $name",
            style: TextStyle(
                fontSize: 10, color: Colors.red, fontWeight: FontWeight.bold),
            textScaleFactor: 2.0,
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
