import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Blue', 'Yellow', 'Green', 'Black']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Bird', 'Dog', 'Cat', 'Elephant']
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': ['Max', 'Max', 'Max', 'Max']
    },
  ];

  var questionIndex = 0;

  _answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[questionIndex]['questionText']),
            ...(questions[questionIndex]['answers'] as List).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
