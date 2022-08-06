// ignore_for_file: prefer_const_constructors, duplicate_ignore, use_key_in_widget_constructors
// import 'dart:ffi';
// import 'dart:ui';

import 'package:flutter/material.dart ';
import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/utils/routes.dart'; // add everytime we start with the app

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name =
      ""; // thsi is done to add name after the name is written in username
  bool changeButton = false;

  // const login_page({Key? key}) : super(key: key);
  // ignore: unused_field
  final _formKey = GlobalKey<FormState>();



  moveToHome(BuildContext context) async {
    // if ( _formKey.currentState.validate()) { // here i faced issue do to validate statement ... just need to resolve that 
      setState(() {
        changeButton = true;
      });

      await Future.delayed(Duration(seconds: 1));

      // ignore: use_build_context_synchronously
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors
            .white, // this is mostly used to make the image match with the background
        child: SingleChildScrollView(
          child: Column(
            children: [
              // in a case where there are multiple small groups in a section we use children
              Image.asset(
                // here this property is used to add image in application
                "assets/image/undraw_secure_login_pdn4.png",
                fit: BoxFit.cover,
                height: 200,
              ),
              // ignore: prefer_const_constructors
              Text(
                "Welcome $name",
                // ignore: prefer_const_constructors
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 20.0,
                // ignore: prefer_const_constructors
                // child:Text(style: TextStyle(color: Colors.black),"there is something that we are missinng on")
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Form(
                  child: Column(
                    children: [
                      TextFormField(
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                          hintText: "Enter username",
                          labelText: "Username",
                        ),
                        validator: (String? value) {
                          if (value != null && value.isEmpty) {
                            return "Username cannot be empty";
                          } else
                            return null;
                        },
                        onChanged: (value) {
                          // this component is used as a call back to when we change anything it will reflect to us
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Password", labelText: "Enter password"),
                        validator: (String? value) {
                          if (value != null && value.isEmpty) {
                            return "Password cannot be empty";
                          } else if (value != null && value.length < 6) {
                            return "Password length is too short ";
                          } else
                            return null;
                        },
                      ),
                      SizedBox(
                        height: 50.0,
                        // ignore: prefer_const_constructors
                      ),
                      Material(
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 150),
                        color: Colors.deepPurple,
                        child: InkWell(
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            height: 50,
                            width: changeButton ? 50 : 150,
                            alignment: Alignment.center,
                            child: changeButton
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
              // main use of this is styling the text that we have written
            ],
          ),
        ));
  }
}
