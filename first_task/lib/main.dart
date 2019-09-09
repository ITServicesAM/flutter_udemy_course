import 'package:flutter/material.dart';

import './text_controller.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task One',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Task One'),
        ),
        body: Center(
          child: TextController(),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
