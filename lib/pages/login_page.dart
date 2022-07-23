import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart '; // add everytime we start with the app

class LoginPage extends StatelessWidget {
  // const login_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors
            .white, // this is mostly used to make the image match with the background
        child: Column(
          children: [
            // in a case where there are multiple small groups in a section we use children
            Image.asset(
              // here this property is used to add image in application
              "assets/image/undraw_secure_login_pdn4.png",
              fit: BoxFit.cover,
            ),
            Text("Welcome to the app",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold)), // main use of this is styling the text that we have written
          ],
        ));
  }
}
