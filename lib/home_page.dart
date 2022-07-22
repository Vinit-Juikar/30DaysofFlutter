import 'package:flutter/material.dart';

final int days = 30;
final String name = "Vinit";
 
 class Homepage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return 
      Material(
        child: Center(
          child: Container(
            child: Text("Welcome to $days days of $name"),
          ),
        ),
      );
    
    
  }
}