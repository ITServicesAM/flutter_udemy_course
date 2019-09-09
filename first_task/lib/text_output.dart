import 'package:flutter/material.dart';

class TextOutput extends StatelessWidget {
  final String textOutput;

  TextOutput(this.textOutput);

  @override
  Widget build(BuildContext context) {
    return Text(textOutput);
  }
}
