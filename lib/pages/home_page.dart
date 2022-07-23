import 'package:flutter/material.dart';

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
                fontSize: 40, color: Colors.red, fontWeight: FontWeight.bold),
            textScaleFactor: 2.0,
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
