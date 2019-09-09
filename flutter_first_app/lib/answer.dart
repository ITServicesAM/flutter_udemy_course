import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function onClickHandler;
  final String answerText;

  Answer(this.onClickHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      width: double.infinity,
      child: RaisedButton(
        child: Text(answerText),
        color: Colors.lightBlue,
        onPressed: onClickHandler,
      ),
    );
  }
}
