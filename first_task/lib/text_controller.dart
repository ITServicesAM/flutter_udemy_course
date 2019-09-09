import 'package:flutter/material.dart';

import './text_output.dart';

class TextController extends StatefulWidget {
  @override
  _TextControllerState createState() => _TextControllerState();
}

class _TextControllerState extends State<TextController> {
  String _text = 'First shown text!';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextOutput(_text),
        RaisedButton(
          child: Text('Change Text'),
          onPressed: () {
            setState(() {
              _text = 'The changed text!';
            });
          },
        ),
      ],
    );
  }
}
