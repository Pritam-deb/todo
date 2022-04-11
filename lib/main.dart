import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

import './questions.dart';
import './answer.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatefulWidget {
  @override
  State<MyFirstApp> createState() => _MyFirstAppState();
}

class _MyFirstAppState extends State<MyFirstApp> {
  void _answerQuestion() {
    setState(() {
      _questionINdex = _questionINdex + 1;
    });
    print("Pressed Button!");
  }

  var _questionINdex = 0;

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'Who dies in the Hound of Baskerville?',
        'answers': ['Watson', 'Moriarty', 'Sherlock', 'Hound'],
      },
      {
        'questionText': 'Who wrote the book Wuthering Heights?',
        'answers': ['Harper Lee', 'Emily Bronte'],
      },
      {
        'questionText': 'The Hitchhiker\'s Guide to the _________',
        'answers': ['Universe', 'Galaxy', 'Planet'],
      },
      {
        'questionText': 'Who is sus?',
        'answers': ['Killer', 'Imposter', 'You'],
      },
      {
        'questionText': 'Who dies in the Hound of Baskerville?',
        'answers': ['Watson', 'Moriarty', 'Sherlock'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List"),
        ),
        body: Column(children: [
          Question(questions[_questionINdex]['questionText'] as String),
          ...(questions[_questionINdex]['answers'] as List<String>).map((ans) {
            return Answer(_answerQuestion, ans);
          }).toList()
        ]),
      ),
    ); //this is a widget which is a combination of all the widgets you are gonna make, and this is gonna be returned by build method
  }
}
