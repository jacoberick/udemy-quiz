import "package:flutter/material.dart";

import "./question.dart";
import "./answer.dart";

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  // handles the answering of a question
  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  //question list
  var questions = [
    "What's your favorite color?",
    "What's your favorite animal?",
    "What's your favorite food?",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz Time'),
          backgroundColor: Colors.lightBlue[800],
        ),
        body: Column(
          children: [
            // Question Field
            Question(questions[_questionIndex]),
            // Answers
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
