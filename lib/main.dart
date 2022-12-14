import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/pages/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // future use, no such use here

  @override // functiond are already defined so we use override to make modifications in them
  Widget build(BuildContext context) {
    return MaterialApp(
      // without this there won't be any output
      // home: Homepage(), this homepage is not to be defined if it is so then it will throw error as it is defined twice
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ), // used to decide the theme of the font that we are using
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {
        "/": (context) => LoginPage(),
        // "/login": (context) => LoginPage(),
      },
    );
  }
}
