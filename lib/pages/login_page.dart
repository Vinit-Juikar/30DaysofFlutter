
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

  String name =""; // thsi is done to add name after the name is written in username
bool changeButton = false;
  // const login_page({Key? key}) : super(key: key);
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
              Text("Welcome $name",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      ),),
              // ignore: prefer_const_constructors
              SizedBox(
                height:20.0,
                // ignore: prefer_const_constructors
                // child:Text(style: TextStyle(color: Colors.black),"there is something that we are missinng on")
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                child: Column(children: [
                  TextFormField(
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                    hintText: "username",
                    labelText: "User"
                  ),
                  onChanged: (value) { // this component is used as a call back to when we change anything it will reflect to us
                  name = value;
                  setState(() {
                    
                  });},
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    labelText: "Enter password"
                  ),
                ),
                 SizedBox(
                height:50.0,
                // ignore: prefer_const_constructors
               
              ),

InkWell(
  onTap: () async {
    setState(() {
      changeButton = true;
      

    });
    await Future.delayed(Duration(seconds: 1));
    Navigator.pushNamed(context, MyRoutes.homeRoute);
  },
  child:   AnimatedContainer(
  duration: Duration(seconds: 1),
    height: 50,
  
    width: changeButton? 50: 150,
  
  
  
    alignment: Alignment.center,
    child: changeButton? Icon(
      Icons.done,
      color: Colors.white,
    )
  
     : Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
  
    ),
  
    decoration: BoxDecoration(
      // shape: changeButton? BoxShape.circle: BoxShape.rectangle,
  
   color: Colors.deepPurple,
  
   borderRadius: BorderRadius.circular(changeButton? 50: 8)
  
    ),
  
  ),
),


              // ignore: sort_child_properties_last
              // ElevatedButton(child: Text("Login"),
              // style: TextButton.styleFrom(minimumSize: Size(150,45)),//most of the time you won't get any req output so consider it as width and height by default
              // onPressed: (){
              //   
          
              // },),
                ],),
              )
               // main use of this is styling the text that we have written
            ],
          ),
        ));
  }
}
