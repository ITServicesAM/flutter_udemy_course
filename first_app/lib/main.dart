import 'package:flutter/material.dart';

import 'pages/home.dart';

void main() => runApp(UdemyApp());

class UdemyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}
