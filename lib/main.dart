


import 'package:flutter/material.dart';
import 'package:plants/bottom%20navbar/bottom_navbar.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home:Navbar(),
    );
  }
}
